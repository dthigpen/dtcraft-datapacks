data remove storage call_stack: global.dt.item_ids[0]
scoreboard players set $id dt.tmp -999999
execute if data storage call_stack: global.dt.item_ids[0] store result score $id dt.tmp run data get storage call_stack: global.dt.item_ids[0]

execute if score $id dt.tmp matches 66..80 run function dt.crafting:internal/recipe/shapeless/search_tree/1058_l0_min_66_max_80
execute if score $id dt.tmp matches 81..84 run function dt.crafting:internal/recipe/shapeless/search_tree/1058_l0_min_81_max_84
