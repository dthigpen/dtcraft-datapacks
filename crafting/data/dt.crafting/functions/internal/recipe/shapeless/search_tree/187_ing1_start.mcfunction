data remove storage call_stack: global.dt.item_ids[0]
scoreboard players set $id dt.tmp -999999
execute if data storage call_stack: global.dt.item_ids[0] store result score $id dt.tmp run data get storage call_stack: global.dt.item_ids[0]

execute if score $id dt.tmp matches 188 run function dt.crafting:internal/recipe/shapeless/search_tree/187_188_ing2_start
execute if score $id dt.tmp matches 730 run function dt.crafting:internal/recipe/shapeless/search_tree/187_730_ing2_start
execute if score $id dt.tmp matches 828 run function dt.crafting:internal/recipe/shapeless/search_tree/187_828_ing2_start
execute if score $id dt.tmp matches 865 run function dt.crafting:internal/recipe/shapeless/search_tree/187_865_ing2_start
execute if score $id dt.tmp matches 947 run function dt.crafting:internal/recipe/shapeless/search_tree/187_947_ing2_start
execute if score $id dt.tmp matches 949 run function dt.crafting:internal/recipe/shapeless/search_tree/187_949_ing2_start
execute if score $id dt.tmp matches 968 run function dt.crafting:internal/recipe/shapeless/search_tree/187_968_ing2_start
