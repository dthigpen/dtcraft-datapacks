data remove storage call_stack: global.dt.item_ids[0]
scoreboard players set $id dt.tmp -999999
execute if data storage call_stack: global.dt.item_ids[0] store result score $id dt.tmp run data get storage call_stack: global.dt.item_ids[0]

execute if score $id dt.tmp matches -2..205 run function dt.crafting:internal/recipe/shaped/search_tree/22_l0_min_n2_max_205
execute if score $id dt.tmp matches 206..729 run function dt.crafting:internal/recipe/shaped/search_tree/22_l0_min_206_max_729
execute if score $id dt.tmp matches -999999 run data modify storage call_stack: global.dt.recipes append value [611, 1]
