data remove storage call_stack: global.dt.item_ids[0]
scoreboard players set $id dt.tmp -999999
execute if data storage call_stack: global.dt.item_ids[0] store result score $id dt.tmp run data get storage call_stack: global.dt.item_ids[0]

execute if score $id dt.tmp matches 412 run function dt.crafting:internal/recipe/shaped/search_tree/412_412_412_n2_412_412_ing6_start
execute if score $id dt.tmp matches 822 run function dt.crafting:internal/recipe/shaped/search_tree/412_412_412_n2_412_822_ing6_start
