data remove storage call_stack: global.dt.item_ids[0]
scoreboard players set $id dt.tmp -999999
execute if data storage call_stack: global.dt.item_ids[0] store result score $id dt.tmp run data get storage call_stack: global.dt.item_ids[0]

execute if score $id dt.tmp matches 22 run function dt.crafting:internal/recipe/shaped/search_tree/692_692_n2_22_22_n2_22_22_ing8_start
execute if score $id dt.tmp matches 23 run function dt.crafting:internal/recipe/shaped/search_tree/692_692_n2_22_22_n2_22_23_ing8_start
execute if score $id dt.tmp matches 24 run function dt.crafting:internal/recipe/shaped/search_tree/692_692_n2_22_22_n2_22_24_ing8_start
execute if score $id dt.tmp matches 25 run function dt.crafting:internal/recipe/shaped/search_tree/692_692_n2_22_22_n2_22_25_ing8_start
execute if score $id dt.tmp matches 26 run function dt.crafting:internal/recipe/shaped/search_tree/692_692_n2_22_22_n2_22_26_ing8_start
execute if score $id dt.tmp matches 27 run function dt.crafting:internal/recipe/shaped/search_tree/692_692_n2_22_22_n2_22_27_ing8_start
execute if score $id dt.tmp matches 28 run function dt.crafting:internal/recipe/shaped/search_tree/692_692_n2_22_22_n2_22_28_ing8_start
execute if score $id dt.tmp matches 29 run function dt.crafting:internal/recipe/shaped/search_tree/692_692_n2_22_22_n2_22_29_ing8_start
