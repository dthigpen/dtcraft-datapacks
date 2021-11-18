data remove storage call_stack: global.dt.item_ids[0]
scoreboard players set $id dt.tmp -999999
execute if data storage call_stack: global.dt.item_ids[0] store result score $id dt.tmp run data get storage call_stack: global.dt.item_ids[0]

execute if score $id dt.tmp matches 729 run function dt.crafting:internal/recipe/shaped/search_tree/163_163_163_n2_163_163_163_n2_0_729_ing10_start
