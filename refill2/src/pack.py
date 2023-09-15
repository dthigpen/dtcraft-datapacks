from mcpy import *
from mcpy.cmd import *
from datapack_utils import writer, versioning
from datapack_utils.versioning import Pack


@datapack(
    include=[
        "../libraries/PlayerDB.v2.0.2.zip",
        "load",
        "call-stack",
        "array",
        "inventory",
    ]
)
def refill():
    # setup lantern load dependencies
    with namespace("load"):

        @functions
        def load():
            yield {
                "values": [
                    "#rx.playerdb:load",
                    "call_stack:load",
                    "dt.array:load",
                    "dt.inventory:load",
                    "dt.refill:load",
                ]
            }

    with namespace("dt.refill"):

        @mcfunction
        def load():
            yield versioning.setup(
                Pack(
                    "dt.refill",
                    Pack.Version(2, 0, 0),
                    name="Refill",
                    tick_function="dt.refill:tick",
                    dependencies=[
                        Pack("call_stack", Pack.Version(1, 0, 0), name="call-stack"),
                        Pack("dt.array", Pack.Version(0, 2, 0), name="Array"),
                        Pack("dt.inventory", Pack.Version(2, 0, 0), name="Inventory"),
                    ],
                )
            )
            yield "scoreboard objectives add dt.refill.toggle trigger"
            yield "scoreboard objectives add mcpy.var dummy"
            yield "scoreboard objectives add dt.tmp dummy"

        # define dep function names
        rx_get_self_tag = FunctionResource("#rx.playerdb:api/v2/get/self")
        rx_save_self_tag = FunctionResource("#rx.playerdb:api/v2/save/self")
        by_key_limit_fn = ScopedFunctionResource("dt.array:api/split/by_key_limit_n")
        get_inventory_fn = ScopedFunctionResource(
            "dt.inventory:api/player/items/inventory/get"
        )
        remove_item_fn = ScopedFunctionResource(
            "dt.inventory:api/player/item/slot/remove"
        )
        replace_item_fn = ScopedFunctionResource("dt.inventory:api/player/item/replace")

        with directory("internal"):
            with directory("database"):

                @scoped_mcfunction
                def get_init_data():
                    initial_data = {
                        "inventory": [],
                        "settings": {"min_durability": 1},
                    }
                    ret_var.set(initial_data)

                @scoped_mcfunction
                def fetch_or_init():
                    # first set to initial data
                    tmp = get_init_data()
                    ret_var.set(tmp)
                    # then get actual data
                    rx_get_self_tag()
                    rx_return = StoragePath(
                        "player.data.dtcraft.refill", "rx.playerdb:io"
                    )
                    ret_var.merge(rx_return)

                @scoped_mcfunction
                def save():
                    user = arg0
                    rx_get_self_tag()
                    rx_io = StoragePath("player.data.dtcraft.refill", "rx.playerdb:io")
                    rx_io.set(user)
                    rx_save_self_tag()

            @scoped_mcfunction
            def print_did_refill():
                slot = arg0.to_score()
                yield 'title @s actionbar ["",{"text":"Refilled from slot ","color":"white"},{"score":{"name":"%s","objective":"%s"}}]' % (
                    slot.holder,
                    slot.objective,
                )

            @scoped_mcfunction
            def do_refill():
                user, item = arg0, arg1
                slot_from_inv = item.key("Slot").copy()
                item.key("Slot").set(user.key("selected").key("Slot"))
                with execute(unless(CurrentEntity.to_path("SelectedItem").present())):
                    remove_item_fn(slot_from_inv)

                replace_item_fn(item)
                print_did_refill(slot_from_inv)

            @scoped_mcfunction
            def refill_from_inventory():
                user = arg0.copy("user")
                # Check that the stored inventory has an item of the matching id
                # TODO Why even search for the item in the stored inventory? May be to counteract issue with user using mouse to move item?
                search_item = Var().set({"id": ""})
                search_item.key("id").set(user.key("selected").key("id"))
                tmp_ret = by_key_limit_fn(user.key("inventory"), search_item, 1)
                stored_item_found = tmp_ret.at(0).at(0).copy()
                # yield 'tellraw @p ["stored_item_found: ",{"nbt":"%s","storage":"%s"}]' % ((stored_item_found.prefix + '.' + stored_item_found.path), stored_item_found.namespace)

                with execute(if_(stored_item_found.key("id").present())):
                    actual_inv_items = get_inventory_fn().copy()
                    search_item.key("id").set(stored_item_found.key("id"))
                    search_item.key("Slot").set(stored_item_found.key("Slot"))
                    # Search for an item in the actual inventory with the given id and slot
                    actual_item_found = (
                        by_key_limit_fn(actual_inv_items, search_item, 1)
                        .at(0)
                        .at(0)
                        .copy()
                    )

                    with execute(if_(actual_item_found.key("id").present())):
                        do_refill(user, actual_item_found)

            @scoped_mcfunction
            def try_refill():
                # check that the current selected item slot is same as passed in users slot
                user = arg0.copy("user")
                user_slot = user.key("selected.Slot").to_score("$user_slot")
                player_slot = CurrentEntity.to_path("SelectedItemSlot").to_score(
                    "$player_slot"
                )
                user_count = user.key("selected.Count").to_score("$user_count")
                with execute(if_(user_slot.equals(player_slot), user_count.matches(1))):
                    refill_from_inventory(user)

            @scoped_mcfunction
            def set_user_item_data():
                user = arg0
                user.key("selected").set(CurrentEntity.to_path("SelectedItem"))
                user.key("selected.Slot").set(CurrentEntity.to_path("SelectedItemSlot"))
                inv = user.key("inventory")
                inv.set(CurrentEntity.to_path("Inventory"))

                for i in range(9):
                    inv.where({"Slot": Byte(i)}).remove()

                ret_var.set(user)

            @scoped_mcfunction
            def check_refills():
                user = fetch_or_init().copy("user")
                entity_selected = CurrentEntity.to_path("SelectedItem")

                with execute(
                    unless(entity_selected.present()),
                    if_(user.key("selected").present()),
                ):
                    tmp_user = try_refill(user)
                    user.set(tmp_user)

                with execute(if_(entity_selected.present())):
                    user.set(set_user_item_data(user))

                save(user)

        @mcfunction
        def tick():
            enabled = Tag("dt.refill")
            toggle_score = Score("@a", "dt.refill.toggle")
            players = AllPlayers.where("scores", {toggle_score.objective: "1.."})
            to_remove_refill = Tag()
            to_add_refill = Tag()

            with execute(f'as {players.where("tag", enabled)}'):
                to_remove_refill.add(CurrentEntity)
            with execute(f'as {players.where("tag", ~enabled)}'):
                to_add_refill.add(CurrentEntity)

            with execute(f'as {AllPlayers.where("tag", to_remove_refill)}'):
                tellraw(CurrentEntity, {"text": "Refill disabled", "color": "dark_red"})
                enabled.remove(CurrentEntity)
                to_remove_refill.remove(CurrentEntity)

            with execute(f'as {AllPlayers.where("tag", to_add_refill)}'):
                tellraw(
                    CurrentEntity, {"text": "Refill enabled", "color": "dark_green"}
                )
                enabled.add(CurrentEntity)
                to_add_refill.remove(CurrentEntity)

            toggle_score.reset()
            toggle_score.enable()

            with execute(f'as {AllPlayers.where("tag","dt.refill")}'):
                check_refills()
            yield "schedule function dt.refill:tick 1t replace"
