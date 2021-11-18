data remove storage call_stack: global.dt.item_ids[0]
scoreboard players set $id dt.tmp -999999
execute if data storage call_stack: global.dt.item_ids[0] store result score $id dt.tmp run data get storage call_stack: global.dt.item_ids[0]

execute if score $id dt.tmp matches 157..168 run function dt.crafting:internal/recipe/shaped/search_tree/729_729_729_n2_729_l0_min_157_max_168
execute if score $id dt.tmp matches 169..781 run function dt.crafting:internal/recipe/shaped/search_tree/729_729_729_n2_729_l0_min_169_max_781
