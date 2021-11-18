data remove storage call_stack: global.dt.item_ids[0]
scoreboard players set $id dt.tmp -999999
execute if data storage call_stack: global.dt.item_ids[0] store result score $id dt.tmp run data get storage call_stack: global.dt.item_ids[0]

execute if score $id dt.tmp matches 158..169 run function dt.crafting:internal/recipe/shaped/search_tree/373_l0_min_158_max_169
execute if score $id dt.tmp matches 170..373 run function dt.crafting:internal/recipe/shaped/search_tree/373_l0_min_170_max_373
execute if score $id dt.tmp matches -999999 run data modify storage call_stack: global.dt.recipes append value [374, 3]
execute if score $id dt.tmp matches -999999 run data modify storage call_stack: global.dt.recipes append value [375, 3]
execute if score $id dt.tmp matches -999999 run data modify storage call_stack: global.dt.recipes append value [376, 3]
execute if score $id dt.tmp matches -999999 run data modify storage call_stack: global.dt.recipes append value [377, 3]
execute if score $id dt.tmp matches -999999 run data modify storage call_stack: global.dt.recipes append value [378, 3]
execute if score $id dt.tmp matches -999999 run data modify storage call_stack: global.dt.recipes append value [379, 3]
execute if score $id dt.tmp matches -999999 run data modify storage call_stack: global.dt.recipes append value [380, 3]
execute if score $id dt.tmp matches -999999 run data modify storage call_stack: global.dt.recipes append value [381, 3]
execute if score $id dt.tmp matches -999999 run data modify storage call_stack: global.dt.recipes append value [382, 3]
execute if score $id dt.tmp matches -999999 run data modify storage call_stack: global.dt.recipes append value [383, 3]
execute if score $id dt.tmp matches -999999 run data modify storage call_stack: global.dt.recipes append value [384, 3]
execute if score $id dt.tmp matches -999999 run data modify storage call_stack: global.dt.recipes append value [385, 3]
execute if score $id dt.tmp matches -999999 run data modify storage call_stack: global.dt.recipes append value [386, 3]
execute if score $id dt.tmp matches -999999 run data modify storage call_stack: global.dt.recipes append value [387, 3]
execute if score $id dt.tmp matches -999999 run data modify storage call_stack: global.dt.recipes append value [388, 3]
