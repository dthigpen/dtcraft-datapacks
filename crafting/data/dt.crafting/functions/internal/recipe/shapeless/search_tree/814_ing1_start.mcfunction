data remove storage call_stack: global.dt.item_ids[0]
scoreboard players set $id dt.tmp -999999
execute if data storage call_stack: global.dt.item_ids[0] store result score $id dt.tmp run data get storage call_stack: global.dt.item_ids[0]

execute if score $id dt.tmp matches 37 run function dt.crafting:internal/recipe/shapeless/search_tree/814_37_ing2_start
execute if score $id dt.tmp matches 39 run function dt.crafting:internal/recipe/shapeless/search_tree/814_39_ing2_start
execute if score $id dt.tmp matches 157 run function dt.crafting:internal/recipe/shapeless/search_tree/814_157_ing2_start
execute if score $id dt.tmp matches 179 run function dt.crafting:internal/recipe/shapeless/search_tree/814_179_ing2_start
execute if score $id dt.tmp matches 824 run function dt.crafting:internal/recipe/shapeless/search_tree/814_824_ing2_start
execute if score $id dt.tmp matches 830 run function dt.crafting:internal/recipe/shapeless/search_tree/814_830_ing2_start
execute if score $id dt.tmp matches 1078 run function dt.crafting:internal/recipe/shapeless/search_tree/814_1078_ing2_start
