data remove storage call_stack: global.dt.item_ids[0]
scoreboard players set $id dt.tmp -999999
execute if data storage call_stack: global.dt.item_ids[0] store result score $id dt.tmp run data get storage call_stack: global.dt.item_ids[0]

execute if score $id dt.tmp matches -999999 run data modify storage call_stack: global.dt.recipes append value [233, 1]
execute if score $id dt.tmp matches -999999 run data modify storage call_stack: global.dt.recipes append value [245, 1]
execute if score $id dt.tmp matches -999999 run data modify storage call_stack: global.dt.recipes append value [256, 1]
execute if score $id dt.tmp matches -999999 run data modify storage call_stack: global.dt.recipes append value [590, 1]
execute if score $id dt.tmp matches -999999 run data modify storage call_stack: global.dt.recipes append value [608, 1]
execute if score $id dt.tmp matches -999999 run data modify storage call_stack: global.dt.recipes append value [701, 1]
execute if score $id dt.tmp matches -999999 run data modify storage call_stack: global.dt.recipes append value [1060, 1]
