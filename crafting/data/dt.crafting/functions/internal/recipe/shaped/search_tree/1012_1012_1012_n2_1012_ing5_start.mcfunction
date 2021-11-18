data remove storage call_stack: global.dt.item_ids[0]
scoreboard players set $id dt.tmp -999999
execute if data storage call_stack: global.dt.item_ids[0] store result score $id dt.tmp run data get storage call_stack: global.dt.item_ids[0]

execute if score $id dt.tmp matches 236 run function dt.crafting:internal/recipe/shaped/search_tree/1012_1012_1012_n2_1012_236_ing6_start
execute if score $id dt.tmp matches 274 run function dt.crafting:internal/recipe/shaped/search_tree/1012_1012_1012_n2_1012_274_ing6_start
execute if score $id dt.tmp matches 1012 run function dt.crafting:internal/recipe/shaped/search_tree/1012_1012_1012_n2_1012_1012_ing6_start
