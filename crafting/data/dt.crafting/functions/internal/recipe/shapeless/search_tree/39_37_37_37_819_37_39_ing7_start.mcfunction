data remove storage call_stack: global.dt.item_ids[0]
scoreboard players set $id dt.tmp -999999
execute if data storage call_stack: global.dt.item_ids[0] store result score $id dt.tmp run data get storage call_stack: global.dt.item_ids[0]

execute if score $id dt.tmp matches 39 run function dt.crafting:internal/recipe/shapeless/search_tree/39_37_37_37_819_37_39_39_ing8_start
