data remove storage call_stack: global.dt.item_ids[0]
scoreboard players set $id dt.tmp -999999
execute if data storage call_stack: global.dt.item_ids[0] store result score $id dt.tmp run data get storage call_stack: global.dt.item_ids[0]

execute if score $id dt.tmp matches 283 run function dt.crafting:internal/recipe/shaped/search_tree/283_0_0_n2_283_283_0_n2_283_283_283_ing11_start
