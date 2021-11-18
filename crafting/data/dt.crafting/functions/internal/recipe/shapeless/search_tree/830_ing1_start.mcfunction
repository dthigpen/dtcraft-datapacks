data remove storage call_stack: global.dt.item_ids[0]
scoreboard players set $id dt.tmp -999999
execute if data storage call_stack: global.dt.item_ids[0] store result score $id dt.tmp run data get storage call_stack: global.dt.item_ids[0]

execute if score $id dt.tmp matches 811..822 run function dt.crafting:internal/recipe/shapeless/search_tree/830_l0_min_811_max_822
execute if score $id dt.tmp matches 823..825 run function dt.crafting:internal/recipe/shapeless/search_tree/830_l0_min_823_max_825
