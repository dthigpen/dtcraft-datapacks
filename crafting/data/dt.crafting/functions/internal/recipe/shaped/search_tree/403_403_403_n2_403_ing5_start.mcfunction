data remove storage call_stack: global.dt.item_ids[0]
scoreboard players set $id dt.tmp -999999
execute if data storage call_stack: global.dt.item_ids[0] store result score $id dt.tmp run data get storage call_stack: global.dt.item_ids[0]

execute if score $id dt.tmp matches 403 run function dt.crafting:internal/recipe/shaped/search_tree/403_403_403_n2_403_403_ing6_start
execute if score $id dt.tmp matches 813 run function dt.crafting:internal/recipe/shaped/search_tree/403_403_403_n2_403_813_ing6_start
