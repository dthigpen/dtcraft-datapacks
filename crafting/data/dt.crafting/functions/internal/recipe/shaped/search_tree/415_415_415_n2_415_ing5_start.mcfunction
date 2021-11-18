data remove storage call_stack: global.dt.item_ids[0]
scoreboard players set $id dt.tmp -999999
execute if data storage call_stack: global.dt.item_ids[0] store result score $id dt.tmp run data get storage call_stack: global.dt.item_ids[0]

execute if score $id dt.tmp matches 415 run function dt.crafting:internal/recipe/shaped/search_tree/415_415_415_n2_415_415_ing6_start
execute if score $id dt.tmp matches 825 run function dt.crafting:internal/recipe/shaped/search_tree/415_415_415_n2_415_825_ing6_start
