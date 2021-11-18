data remove storage call_stack: global.dt.item_ids[0]
scoreboard players set $id dt.tmp -999999
execute if data storage call_stack: global.dt.item_ids[0] store result score $id dt.tmp run data get storage call_stack: global.dt.item_ids[0]

execute if score $id dt.tmp matches 37 run function dt.crafting:internal/recipe/shapeless/search_tree/824_37_ing2_start
execute if score $id dt.tmp matches 39 run function dt.crafting:internal/recipe/shapeless/search_tree/824_39_ing2_start
execute if score $id dt.tmp matches 157 run function dt.crafting:internal/recipe/shapeless/search_tree/824_157_ing2_start
execute if score $id dt.tmp matches 176 run function dt.crafting:internal/recipe/shapeless/search_tree/824_176_ing2_start
execute if score $id dt.tmp matches 395 run function dt.crafting:internal/recipe/shapeless/search_tree/824_395_ing2_start
execute if score $id dt.tmp matches 810 run function dt.crafting:internal/recipe/shapeless/search_tree/824_810_ing2_start
execute if score $id dt.tmp matches 816 run function dt.crafting:internal/recipe/shapeless/search_tree/824_816_ing2_start
execute if score $id dt.tmp matches 820 run function dt.crafting:internal/recipe/shapeless/search_tree/824_820_ing2_start
execute if score $id dt.tmp matches 821 run function dt.crafting:internal/recipe/shapeless/search_tree/824_821_ing2_start
execute if score $id dt.tmp matches 824 run function dt.crafting:internal/recipe/shapeless/search_tree/824_824_ing2_start
execute if score $id dt.tmp matches 830 run function dt.crafting:internal/recipe/shapeless/search_tree/824_830_ing2_start
execute if score $id dt.tmp matches 1078 run function dt.crafting:internal/recipe/shapeless/search_tree/824_1078_ing2_start
execute if score $id dt.tmp matches -999999 run data modify storage call_stack: global.dt.recipes append value [811, 1]
execute if score $id dt.tmp matches -999999 run data modify storage call_stack: global.dt.recipes append value [812, 1]
execute if score $id dt.tmp matches -999999 run data modify storage call_stack: global.dt.recipes append value [816, 2]
