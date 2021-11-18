data remove storage call_stack: global.dt.item_ids[0]
scoreboard players set $id dt.tmp -999999
execute if data storage call_stack: global.dt.item_ids[0] store result score $id dt.tmp run data get storage call_stack: global.dt.item_ids[0]

execute if score $id dt.tmp matches 1..23 run function dt.crafting:internal/recipe/shaped/search_tree/0_0_l0_min_1_max_23
execute if score $id dt.tmp matches 24..90 run function dt.crafting:internal/recipe/shaped/search_tree/0_0_l0_min_24_max_90
execute if score $id dt.tmp matches 91..241 run function dt.crafting:internal/recipe/shaped/search_tree/0_0_l0_min_91_max_241
execute if score $id dt.tmp matches 283..434 run function dt.crafting:internal/recipe/shaped/search_tree/0_0_l0_min_283_max_434
execute if score $id dt.tmp matches 439..1073 run function dt.crafting:internal/recipe/shaped/search_tree/0_0_l0_min_439_max_1073
