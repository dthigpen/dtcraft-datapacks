data remove storage call_stack: global.dt.item_ids[0]
scoreboard players set $id dt.tmp -999999
execute if data storage call_stack: global.dt.item_ids[0] store result score $id dt.tmp run data get storage call_stack: global.dt.item_ids[0]

execute if score $id dt.tmp matches -2..692 run function dt.crafting:internal/recipe/shaped/search_tree/729_l0_min_n2_max_692
execute if score $id dt.tmp matches 729..729 run function dt.crafting:internal/recipe/shaped/search_tree/729_l0_min_729_max_729
