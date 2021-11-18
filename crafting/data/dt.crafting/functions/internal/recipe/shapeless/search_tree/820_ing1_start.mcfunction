data remove storage call_stack: global.dt.item_ids[0]
scoreboard players set $id dt.tmp -999999
execute if data storage call_stack: global.dt.item_ids[0] store result score $id dt.tmp run data get storage call_stack: global.dt.item_ids[0]

execute if score $id dt.tmp matches 37 run function dt.crafting:internal/recipe/shapeless/search_tree/820_37_ing2_start
execute if score $id dt.tmp matches 39 run function dt.crafting:internal/recipe/shapeless/search_tree/820_39_ing2_start
execute if score $id dt.tmp matches 157 run function dt.crafting:internal/recipe/shapeless/search_tree/820_157_ing2_start
execute if score $id dt.tmp matches 830 run function dt.crafting:internal/recipe/shapeless/search_tree/820_830_ing2_start
execute if score $id dt.tmp matches 1078 run function dt.crafting:internal/recipe/shapeless/search_tree/820_1078_ing2_start
execute if score $id dt.tmp matches -999999 run data modify storage call_stack: global.dt.recipes append value [812, 1]
