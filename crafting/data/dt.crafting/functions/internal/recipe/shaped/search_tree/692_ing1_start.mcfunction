data remove storage call_stack: global.dt.item_ids[0]
scoreboard players set $id dt.tmp -999999
execute if data storage call_stack: global.dt.item_ids[0] store result score $id dt.tmp run data get storage call_stack: global.dt.item_ids[0]

execute if score $id dt.tmp matches -2 run function dt.crafting:internal/recipe/shaped/search_tree/692_n2_ing2_start
execute if score $id dt.tmp matches 0 run function dt.crafting:internal/recipe/shaped/search_tree/692_0_ing2_start
execute if score $id dt.tmp matches 692 run function dt.crafting:internal/recipe/shaped/search_tree/692_692_ing2_start
execute if score $id dt.tmp matches 729 run function dt.crafting:internal/recipe/shaped/search_tree/692_729_ing2_start
execute if score $id dt.tmp matches 762 run function dt.crafting:internal/recipe/shaped/search_tree/692_762_ing2_start
execute if score $id dt.tmp matches -999999 run data modify storage call_stack: global.dt.recipes append value [1012, 9]
