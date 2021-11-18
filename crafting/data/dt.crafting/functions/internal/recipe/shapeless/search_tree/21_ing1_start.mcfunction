data remove storage call_stack: global.dt.item_ids[0]
scoreboard players set $id dt.tmp -999999
execute if data storage call_stack: global.dt.item_ids[0] store result score $id dt.tmp run data get storage call_stack: global.dt.item_ids[0]

execute if score $id dt.tmp matches 4 run function dt.crafting:internal/recipe/shapeless/search_tree/21_4_ing2_start
execute if score $id dt.tmp matches 199 run function dt.crafting:internal/recipe/shapeless/search_tree/21_199_ing2_start
execute if score $id dt.tmp matches 299 run function dt.crafting:internal/recipe/shapeless/search_tree/21_299_ing2_start
