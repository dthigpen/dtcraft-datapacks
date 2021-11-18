data remove storage call_stack: global.dt.item_ids[0]
scoreboard players set $id dt.tmp -999999
execute if data storage call_stack: global.dt.item_ids[0] store result score $id dt.tmp run data get storage call_stack: global.dt.item_ids[0]

execute if score $id dt.tmp matches 439 run function dt.crafting:internal/recipe/shaped/search_tree/439_0_0_n2_439_439_ing6_start
execute if score $id dt.tmp matches 440 run function dt.crafting:internal/recipe/shaped/search_tree/439_0_0_n2_439_440_ing6_start
execute if score $id dt.tmp matches 441 run function dt.crafting:internal/recipe/shaped/search_tree/439_0_0_n2_439_441_ing6_start
