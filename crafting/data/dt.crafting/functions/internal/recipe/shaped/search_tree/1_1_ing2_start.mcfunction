data remove storage call_stack: global.dt.item_ids[0]
scoreboard players set $id dt.tmp -999999
execute if data storage call_stack: global.dt.item_ids[0] store result score $id dt.tmp run data get storage call_stack: global.dt.item_ids[0]

execute if score $id dt.tmp matches -2 run function dt.crafting:internal/recipe/shaped/search_tree/1_1_n2_ing3_start
execute if score $id dt.tmp matches 1 run function dt.crafting:internal/recipe/shaped/search_tree/1_1_1_ing3_start
execute if score $id dt.tmp matches -999999 run data modify storage call_stack: global.dt.recipes append value [619, 1]
