data remove storage call_stack: global.dt.item_ids[0]
scoreboard players set $id dt.tmp -999999
execute if data storage call_stack: global.dt.item_ids[0] store result score $id dt.tmp run data get storage call_stack: global.dt.item_ids[0]

execute if score $id dt.tmp matches 585 run function dt.crafting:internal/recipe/shaped/search_tree/21_21_21_n2_21_682_21_n2_21_585_ing10_start
