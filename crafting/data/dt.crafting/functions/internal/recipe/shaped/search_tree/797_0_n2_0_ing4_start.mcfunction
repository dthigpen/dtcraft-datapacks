data remove storage call_stack: global.dt.item_ids[0]
scoreboard players set $id dt.tmp -999999
execute if data storage call_stack: global.dt.item_ids[0] store result score $id dt.tmp run data get storage call_stack: global.dt.item_ids[0]

execute if score $id dt.tmp matches 190 run function dt.crafting:internal/recipe/shaped/search_tree/797_0_n2_0_190_ing5_start
execute if score $id dt.tmp matches 947 run function dt.crafting:internal/recipe/shaped/search_tree/797_0_n2_0_947_ing5_start
