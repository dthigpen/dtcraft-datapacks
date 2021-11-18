data remove storage call_stack: global.dt.item_ids[0]
scoreboard players set $id dt.tmp -999999
execute if data storage call_stack: global.dt.item_ids[0] store result score $id dt.tmp run data get storage call_stack: global.dt.item_ids[0]

execute if score $id dt.tmp matches 0 run function dt.crafting:internal/recipe/shaped/search_tree/21_21_n2_0_ing4_start
execute if score $id dt.tmp matches 9 run function dt.crafting:internal/recipe/shaped/search_tree/21_21_n2_9_ing4_start
execute if score $id dt.tmp matches 21 run function dt.crafting:internal/recipe/shaped/search_tree/21_21_n2_21_ing4_start
execute if score $id dt.tmp matches 729 run function dt.crafting:internal/recipe/shaped/search_tree/21_21_n2_729_ing4_start
execute if score $id dt.tmp matches 1065 run function dt.crafting:internal/recipe/shaped/search_tree/21_21_n2_1065_ing4_start
