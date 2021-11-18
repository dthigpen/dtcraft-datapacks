data remove storage call_stack: global.dt.item_ids[0]
scoreboard players set $id dt.tmp -999999
execute if data storage call_stack: global.dt.item_ids[0] store result score $id dt.tmp run data get storage call_stack: global.dt.item_ids[0]

execute if score $id dt.tmp matches 187 run function dt.crafting:internal/recipe/shapeless/search_tree/828_187_ing2_start
execute if score $id dt.tmp matches 265 run function dt.crafting:internal/recipe/shapeless/search_tree/828_265_ing2_start
execute if score $id dt.tmp matches 794 run function dt.crafting:internal/recipe/shapeless/search_tree/828_794_ing2_start
execute if score $id dt.tmp matches 865 run function dt.crafting:internal/recipe/shapeless/search_tree/828_865_ing2_start
