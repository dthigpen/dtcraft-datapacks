data remove storage call_stack: global.dt.item_ids[0]
scoreboard players set $id dt.tmp -999999
execute if data storage call_stack: global.dt.item_ids[0] store result score $id dt.tmp run data get storage call_stack: global.dt.item_ids[0]

execute if score $id dt.tmp matches 0 run function dt.crafting:internal/recipe/shaped/search_tree/692_692_692_n2_692_0_ing6_start
execute if score $id dt.tmp matches 248 run function dt.crafting:internal/recipe/shaped/search_tree/692_692_692_n2_692_248_ing6_start
execute if score $id dt.tmp matches 692 run function dt.crafting:internal/recipe/shaped/search_tree/692_692_692_n2_692_692_ing6_start
