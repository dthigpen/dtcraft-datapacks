data remove storage call_stack: global.dt.item_ids[0]
scoreboard players set $id dt.tmp -999999
execute if data storage call_stack: global.dt.item_ids[0] store result score $id dt.tmp run data get storage call_stack: global.dt.item_ids[0]

execute if score $id dt.tmp matches 297 run function dt.crafting:internal/recipe/shaped/search_tree/408_408_408_n2_408_408_297_ing7_start
execute if score $id dt.tmp matches 408 run function dt.crafting:internal/recipe/shaped/search_tree/408_408_408_n2_408_408_408_ing7_start
