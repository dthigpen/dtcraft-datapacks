data remove storage call_stack: global.dt.item_ids[0]
scoreboard players set $id dt.tmp -999999
execute if data storage call_stack: global.dt.item_ids[0] store result score $id dt.tmp run data get storage call_stack: global.dt.item_ids[0]

execute if score $id dt.tmp matches 692 run function dt.crafting:internal/recipe/shaped/search_tree/65_65_65_n2_0_692_0_n2_692_ing9_start
