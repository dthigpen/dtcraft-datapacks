data remove storage call_stack: global.dt.item_ids[0]
scoreboard players set $id dt.tmp -999999
execute if data storage call_stack: global.dt.item_ids[0] store result score $id dt.tmp run data get storage call_stack: global.dt.item_ids[0]

execute if score $id dt.tmp matches 439 run function dt.crafting:internal/recipe/shaped/search_tree/439_0_0_n2_439_439_0_n2_439_ing9_start
execute if score $id dt.tmp matches 440 run function dt.crafting:internal/recipe/shaped/search_tree/439_0_0_n2_439_439_0_n2_440_ing9_start
execute if score $id dt.tmp matches 441 run function dt.crafting:internal/recipe/shaped/search_tree/439_0_0_n2_439_439_0_n2_441_ing9_start
