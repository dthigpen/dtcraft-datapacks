data remove storage call_stack: global.dt.item_ids[0]
scoreboard players set $id dt.tmp -999999
execute if data storage call_stack: global.dt.item_ids[0] store result score $id dt.tmp run data get storage call_stack: global.dt.item_ids[0]

execute if score $id dt.tmp matches 240 run function dt.crafting:internal/recipe/shaped/search_tree/0_0_240_n2_0_240_240_n2_240_240_ing10_start
execute if score $id dt.tmp matches 241 run function dt.crafting:internal/recipe/shaped/search_tree/0_0_240_n2_0_240_240_n2_240_241_ing10_start
