data remove storage call_stack: global.dt.item_ids[0]
scoreboard players set $id dt.tmp -999999
execute if data storage call_stack: global.dt.item_ids[0] store result score $id dt.tmp run data get storage call_stack: global.dt.item_ids[0]

execute if score $id dt.tmp matches 187 run function dt.crafting:internal/recipe/shapeless/search_tree/968_730_947_949_187_ing5_start
execute if score $id dt.tmp matches 188 run function dt.crafting:internal/recipe/shapeless/search_tree/968_730_947_949_188_ing5_start
