data remove storage call_stack: global.dt.item_ids[0]
scoreboard players set $id dt.tmp -999999
execute if data storage call_stack: global.dt.item_ids[0] store result score $id dt.tmp run data get storage call_stack: global.dt.item_ids[0]

execute if score $id dt.tmp matches 0..232 run function dt.crafting:internal/recipe/shaped/search_tree/l0_min_0_max_232
execute if score $id dt.tmp matches 234..1073 run function dt.crafting:internal/recipe/shaped/search_tree/l0_min_234_max_1073
execute if score $id dt.tmp matches 1078..1099 run function dt.crafting:internal/recipe/shaped/search_tree/l0_min_1078_max_1099
