data remove storage call_stack: global.dt.item_ids[0]
scoreboard players set $id dt.tmp -999999
execute if data storage call_stack: global.dt.item_ids[0] store result score $id dt.tmp run data get storage call_stack: global.dt.item_ids[0]

execute if score $id dt.tmp matches 730 run function dt.crafting:internal/recipe/shapeless/search_tree/947_949_187_730_ing4_start
execute if score $id dt.tmp matches 968 run function dt.crafting:internal/recipe/shapeless/search_tree/947_949_187_968_ing4_start
