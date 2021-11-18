data remove storage call_stack: global.dt.item_ids[0]
scoreboard players set $id dt.tmp -999999
execute if data storage call_stack: global.dt.item_ids[0] store result score $id dt.tmp run data get storage call_stack: global.dt.item_ids[0]

execute if score $id dt.tmp matches -2 run function dt.crafting:internal/recipe/shaped/search_tree/21_n2_ing2_start
execute if score $id dt.tmp matches 0 run function dt.crafting:internal/recipe/shaped/search_tree/21_0_ing2_start
execute if score $id dt.tmp matches 9 run function dt.crafting:internal/recipe/shaped/search_tree/21_9_ing2_start
execute if score $id dt.tmp matches 21 run function dt.crafting:internal/recipe/shaped/search_tree/21_21_ing2_start
execute if score $id dt.tmp matches 199 run function dt.crafting:internal/recipe/shaped/search_tree/21_199_ing2_start
execute if score $id dt.tmp matches 299 run function dt.crafting:internal/recipe/shaped/search_tree/21_299_ing2_start
execute if score $id dt.tmp matches 689 run function dt.crafting:internal/recipe/shaped/search_tree/21_689_ing2_start
execute if score $id dt.tmp matches 1065 run function dt.crafting:internal/recipe/shaped/search_tree/21_1065_ing2_start
