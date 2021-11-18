data remove storage call_stack: global.dt.item_ids[0]
scoreboard players set $id dt.tmp -999999
execute if data storage call_stack: global.dt.item_ids[0] store result score $id dt.tmp run data get storage call_stack: global.dt.item_ids[0]

execute if score $id dt.tmp matches 0..111 run function dt.crafting:internal/recipe/shaped/search_tree/0_l0_min_0_max_111
execute if score $id dt.tmp matches 112..123 run function dt.crafting:internal/recipe/shaped/search_tree/0_l0_min_112_max_123
execute if score $id dt.tmp matches 124..690 run function dt.crafting:internal/recipe/shaped/search_tree/0_l0_min_124_max_690
execute if score $id dt.tmp matches 692..859 run function dt.crafting:internal/recipe/shaped/search_tree/0_l0_min_692_max_859
