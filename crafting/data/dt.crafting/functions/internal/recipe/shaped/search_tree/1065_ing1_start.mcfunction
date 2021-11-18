data remove storage call_stack: global.dt.item_ids[0]
scoreboard players set $id dt.tmp -999999
execute if data storage call_stack: global.dt.item_ids[0] store result score $id dt.tmp run data get storage call_stack: global.dt.item_ids[0]

execute if score $id dt.tmp matches 0 run function dt.crafting:internal/recipe/shaped/search_tree/1065_0_ing2_start
execute if score $id dt.tmp matches 1065 run function dt.crafting:internal/recipe/shaped/search_tree/1065_1065_ing2_start
execute if score $id dt.tmp matches -999999 run data modify storage call_stack: global.dt.recipes append value [248, 1]
execute if score $id dt.tmp matches -999999 run data modify storage call_stack: global.dt.recipes append value [704, 1]
execute if score $id dt.tmp matches -999999 run data modify storage call_stack: global.dt.recipes append value [705, 1]
execute if score $id dt.tmp matches -999999 run data modify storage call_stack: global.dt.recipes append value [706, 1]
execute if score $id dt.tmp matches -999999 run data modify storage call_stack: global.dt.recipes append value [707, 1]
execute if score $id dt.tmp matches -999999 run data modify storage call_stack: global.dt.recipes append value [708, 1]
