data remove storage call_stack: global.dt.item_ids[0]
scoreboard players set $id dt.tmp -999999
execute if data storage call_stack: global.dt.item_ids[0] store result score $id dt.tmp run data get storage call_stack: global.dt.item_ids[0]

execute if score $id dt.tmp matches 22 run function dt.crafting:internal/recipe/shaped/search_tree/791_791_n2_22_ing4_start
execute if score $id dt.tmp matches 23 run function dt.crafting:internal/recipe/shaped/search_tree/791_791_n2_23_ing4_start
execute if score $id dt.tmp matches 24 run function dt.crafting:internal/recipe/shaped/search_tree/791_791_n2_24_ing4_start
execute if score $id dt.tmp matches 25 run function dt.crafting:internal/recipe/shaped/search_tree/791_791_n2_25_ing4_start
execute if score $id dt.tmp matches 26 run function dt.crafting:internal/recipe/shaped/search_tree/791_791_n2_26_ing4_start
execute if score $id dt.tmp matches 27 run function dt.crafting:internal/recipe/shaped/search_tree/791_791_n2_27_ing4_start
execute if score $id dt.tmp matches 28 run function dt.crafting:internal/recipe/shaped/search_tree/791_791_n2_28_ing4_start
execute if score $id dt.tmp matches 29 run function dt.crafting:internal/recipe/shaped/search_tree/791_791_n2_29_ing4_start
