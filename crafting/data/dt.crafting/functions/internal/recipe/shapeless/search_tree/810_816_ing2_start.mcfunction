data remove storage call_stack: global.dt.item_ids[0]
scoreboard players set $id dt.tmp -999999
execute if data storage call_stack: global.dt.item_ids[0] store result score $id dt.tmp run data get storage call_stack: global.dt.item_ids[0]

execute if score $id dt.tmp matches 176 run function dt.crafting:internal/recipe/shapeless/search_tree/810_816_176_ing3_start
execute if score $id dt.tmp matches 395 run function dt.crafting:internal/recipe/shapeless/search_tree/810_816_395_ing3_start
execute if score $id dt.tmp matches 816 run function dt.crafting:internal/recipe/shapeless/search_tree/810_816_816_ing3_start
execute if score $id dt.tmp matches 820 run function dt.crafting:internal/recipe/shapeless/search_tree/810_816_820_ing3_start
execute if score $id dt.tmp matches 821 run function dt.crafting:internal/recipe/shapeless/search_tree/810_816_821_ing3_start
execute if score $id dt.tmp matches 824 run function dt.crafting:internal/recipe/shapeless/search_tree/810_816_824_ing3_start
execute if score $id dt.tmp matches -999999 run data modify storage call_stack: global.dt.recipes append value [812, 1]
