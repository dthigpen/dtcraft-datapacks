data remove storage call_stack: global.dt.item_ids[0]
scoreboard players set $id dt.tmp -999999
execute if data storage call_stack: global.dt.item_ids[0] store result score $id dt.tmp run data get storage call_stack: global.dt.item_ids[0]

execute if score $id dt.tmp matches 37 run function dt.crafting:internal/recipe/shaped/search_tree/734_37_ing2_start
execute if score $id dt.tmp matches 38 run function dt.crafting:internal/recipe/shaped/search_tree/734_38_ing2_start
execute if score $id dt.tmp matches 791 run function dt.crafting:internal/recipe/shaped/search_tree/734_791_ing2_start
execute if score $id dt.tmp matches 867 run function dt.crafting:internal/recipe/shaped/search_tree/734_867_ing2_start
