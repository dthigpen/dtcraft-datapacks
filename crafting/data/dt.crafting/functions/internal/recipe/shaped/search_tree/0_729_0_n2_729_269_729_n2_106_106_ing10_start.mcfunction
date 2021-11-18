data remove storage call_stack: global.dt.item_ids[0]
scoreboard players set $id dt.tmp -999999
execute if data storage call_stack: global.dt.item_ids[0] store result score $id dt.tmp run data get storage call_stack: global.dt.item_ids[0]

execute if score $id dt.tmp matches 101..112 run function dt.crafting:internal/recipe/shaped/search_tree/0_729_0_n2_729_269_729_n2_106_106_l0_min_101_max_112
execute if score $id dt.tmp matches 113..124 run function dt.crafting:internal/recipe/shaped/search_tree/0_729_0_n2_729_269_729_n2_106_106_l0_min_113_max_124
execute if score $id dt.tmp matches 125..132 run function dt.crafting:internal/recipe/shaped/search_tree/0_729_0_n2_729_269_729_n2_106_106_l0_min_125_max_132
