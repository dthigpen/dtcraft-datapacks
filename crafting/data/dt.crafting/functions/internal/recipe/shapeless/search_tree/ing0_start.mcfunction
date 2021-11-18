data remove storage call_stack: global.dt.item_ids[0]
scoreboard players set $id dt.tmp -999999
execute if data storage call_stack: global.dt.item_ids[0] store result score $id dt.tmp run data get storage call_stack: global.dt.item_ids[0]

execute if score $id dt.tmp matches 1..827 run function dt.crafting:internal/recipe/shapeless/search_tree/l0_min_1_max_827
execute if score $id dt.tmp matches 828..1078 run function dt.crafting:internal/recipe/shapeless/search_tree/l0_min_828_max_1078
