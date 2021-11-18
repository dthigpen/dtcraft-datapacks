data remove storage call_stack: global.dt.item_ids[0]
scoreboard players set $id dt.tmp -999999
execute if data storage call_stack: global.dt.item_ids[0] store result score $id dt.tmp run data get storage call_stack: global.dt.item_ids[0]

execute if score $id dt.tmp matches 1064 run function dt.crafting:internal/recipe/shaped/search_tree/1064_1064_1064_n2_275_275_275_n2_1064_1064_ing10_start
