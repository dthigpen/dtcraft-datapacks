data remove storage call_stack: global.dt.item_ids[0]
scoreboard players set $id dt.tmp -999999
execute if data storage call_stack: global.dt.item_ids[0] store result score $id dt.tmp run data get storage call_stack: global.dt.item_ids[0]

execute if score $id dt.tmp matches 176 run function dt.crafting:internal/recipe/shapeless/search_tree/816_824_810_176_ing4_start
execute if score $id dt.tmp matches 395 run function dt.crafting:internal/recipe/shapeless/search_tree/816_824_810_395_ing4_start
execute if score $id dt.tmp matches 820 run function dt.crafting:internal/recipe/shapeless/search_tree/816_824_810_820_ing4_start
execute if score $id dt.tmp matches 821 run function dt.crafting:internal/recipe/shapeless/search_tree/816_824_810_821_ing4_start
