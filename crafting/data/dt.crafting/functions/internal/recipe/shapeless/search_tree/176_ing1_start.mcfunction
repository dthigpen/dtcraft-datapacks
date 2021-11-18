data remove storage call_stack: global.dt.item_ids[0]
scoreboard players set $id dt.tmp -999999
execute if data storage call_stack: global.dt.item_ids[0] store result score $id dt.tmp run data get storage call_stack: global.dt.item_ids[0]

execute if score $id dt.tmp matches 810 run function dt.crafting:internal/recipe/shapeless/search_tree/176_810_ing2_start
execute if score $id dt.tmp matches 816 run function dt.crafting:internal/recipe/shapeless/search_tree/176_816_ing2_start
execute if score $id dt.tmp matches 824 run function dt.crafting:internal/recipe/shapeless/search_tree/176_824_ing2_start
