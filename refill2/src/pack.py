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
        with functions("load"):
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
        with mcfunction("load"):
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

        # define dep function names
        rx_get_self_tag = "#rx.playerdb:api/v2/get/self"
        rx_save_self_tag = "#rx.playerdb:api/v2/save/self"
        by_key_limit_fn = "dt.array:api/split/by_key_limit_n"
        get_inventory_fn = "dt.inventory:api/player/items/inventory/get"
        remove_item_fn = "dt.inventory:api/player/item/slot/remove"
        replace_item_fn = "dt.inventory:api/player/item/replace"

        with dir("internal"):
            with dir("database"):
                with mcfunction("get_init_data") as get_init_data_fn, scope():
                    initial_data = {"inventory": [], "settings": {"min_durability": 1}}
                    ret_var.set(initial_data)

                with mcfunction("fetch_or_init") as fetch_or_init_fn, scope():
                    # first set to initial data
                    tmp = call(get_init_data_fn)
                    ret_var.set(tmp)
                    # then get actual data
                    call(rx_get_self_tag)
                    rx_return = StoragePath(
                        "player.data.dtcraft.refill", "rx.playerdb:io"
                    )
                    ret_var.merge(rx_return)

                with mcfunction("save") as save_fn, scope():
                    user = arg0
                    call(rx_get_self_tag)
                    rx_io = StoragePath("player.data.dtcraft.refill", "rx.playerdb:io")
                    rx_io.set(user)
                    call(rx_save_self_tag)
            with mcfunction("print_did_refill") as print_did_refill_fn, scope():
                slot = arg0.to_score()
                yield 'title @s actionbar ["",{"text":"Refilled from slot ","color":"white"},{"score":{"name":"%s","objective":"%s"}}]' % (
                    slot.holder,
                    slot.objective,
                )
            with mcfunction("do_refill") as do_refill_fn, scope():
                user, item = arg0, arg1
                slot_from_inv = item.key("Slot")
                # TODO not sure why this execute cond is here
                with execute(unless(CurrentEntity().to_path("SelectedItem").present())):
                    call(remove_item_fn, slot_from_inv)

                call(replace_item_fn, item)
                call(print_did_refill_fn, slot_from_inv)
            with mcfunction(
                "refill_from_inventory"
            ) as refill_from_inventory_fn, scope():
                user = arg0

                # Check that the stored inventory has an item of the matching id
                # TODO Why even search for the item in the stored inventory? May be to counteract issue with user using mouse to move item?
                search_item = Var().set({"id": ""})
                search_item.key("id").set(user.key("selected").key("id"))
                tmp_ret = call(by_key_limit_fn, user.key("inventory"), search_item, 1)
                stored_item_found = tmp_ret.where(0).where(0).copy()
                with execute(if_(stored_item_found.key("id").present())):
                    actual_inv_items = call(get_inventory_fn).copy()
                    # search_item = Var().set({"id": "", "Slot": ""})
                    search_item.key("id").set(stored_item_found.key("id"))
                    search_item.key("Slot").set(stored_item_found.key("Slot"))

                    # Search for an item in the actual inventory with the given id and slot
                    actual_item_found = (
                        call(by_key_limit_fn, actual_inv_items, search_item, 1)
                        .where(0)
                        .where(0)
                        .copy()
                    )

                    with execute(if_(actual_item_found.key("id").present())):
                        call(do_refill_fn, user, actual_item_found)

            with mcfunction("try_refill") as try_refill_fn, scope():
                # check that the current selected item slot is same as passed in users slot
                user = arg0
                user_slot = user.key("selected").key("Slot").to_score()
                player_slot = CurrentEntity().to_path("SelectedItemSlot").to_score()
                user_count = user.key("selected").key("Count").to_score()
                # yield 'tellraw @p ["try_refill this.user: ",{"nbt":"%s","storage":"%s"}]' % ((user.prefix + '.' + user.path), user.namespace)
                # yield 'tellraw @p ["try_refill data selected:",{"score":{"name":"%s","objective":"%s"}}]'  % (user_slot.holder, user_slot.objective)
                # yield 'tellraw @p ["try_refill plyer selected:",{"score":{"name":"%s","objective":"%s"}}]'  % (player_slot.holder, player_slot.objective)
                # yield 'tellraw @p ["try_refill count:",{"score":{"name":"%s","objective":"%s"}}]'  % (user_count.holder, user_count.objective)
                with execute(if_(user_slot.equals(player_slot), user_count.matches(1))):
                    call(refill_from_inventory_fn, user)

            with mcfunction("set_user_item_data") as set_user_item_data_fn, scope():
                user = arg0
                user.key("selected").set(CurrentEntity().to_path("SelectedItem"))
                user.key("selected").key("Slot").set(
                    CurrentEntity().to_path("SelectedItemSlot")
                )
                inv = user.key("inventory")
                inv.set(CurrentEntity().to_path("Inventory"))

                for i in range(9):
                    inv.where({"Slot": Byte(i)}).remove()

                ret_var.set(user)

            with mcfunction("check_refills") as check_refills_fn, scope():
                user = call(fetch_or_init_fn).copy()
                entity_selected = CurrentEntity().to_path("SelectedItem")

                with execute(
                    unless(entity_selected.present()),
                    if_(user.key("selected").present()),
                ):
                    tmp_user = call(try_refill_fn, user)
                    user.set(tmp_user)

                with execute(if_(entity_selected.present())):
                    user.set(call(set_user_item_data_fn, user))

                call(save_fn, user)

        with mcfunction("tick") as tick_fn:
            enabled = Tag("dt.refill")
            toggle_score = Score("@a", "dt.refill.toggle")
            players = AllPlayers().where("scores", {toggle_score.objective: "1.."})
            to_remove_refill = Tag()
            to_add_refill = Tag()

            with execute(f'as {players.where("tag", enabled)}'):
                to_remove_refill.add(CurrentEntity())
            with execute(f'as {players.where("tag", ~enabled)}'):
                to_add_refill.add(CurrentEntity())

            with execute(f'as {AllPlayers().where("tag", to_remove_refill)}'):
                yield 'tellraw @s {"text":"Refill disabled","color":"dark_red"}'
                enabled.remove(CurrentEntity())
                to_remove_refill.remove(CurrentEntity())

            with execute(f'as {AllPlayers().where("tag", to_add_refill)}'):
                yield 'tellraw @s {"text":"Refill enabled","color":"dark_green"}'
                enabled.add(CurrentEntity())
                to_add_refill.remove(CurrentEntity())

            toggle_score.reset()
            toggle_score.enable()

            with execute(f'as {AllPlayers().where("tag","dt.refill")}'):
                call(check_refills_fn)
            yield "schedule function dt.refill:tick 1t replace"
