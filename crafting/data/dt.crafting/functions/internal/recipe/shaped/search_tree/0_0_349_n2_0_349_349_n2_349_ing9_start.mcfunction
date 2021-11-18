data remove storage call_stack: global.dt.item_ids[0]
scoreboard players set $id dt.tmp -999999
execute if data storage call_stack: global.dt.item_ids[0] store result score $id dt.tmp run data get storage call_stack: global.dt.item_ids[0]

execute if score $id dt.tmp matches 349 run function dt.crafting:internal/recipe/shaped/search_tree/0_0_349_n2_0_349_349_n2_349_349_ing10_start
execute if score $id dt.tmp matches 350 run function dt.crafting:internal/recipe/shaped/search_tree/0_0_349_n2_0_349_349_n2_349_350_ing10_start
execute if score $id dt.tmp matches 352 run function dt.crafting:internal/recipe/shaped/search_tree/0_0_349_n2_0_349_349_n2_349_352_ing10_start
