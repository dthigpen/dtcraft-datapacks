data remove storage call_stack: global.dt.item_ids[0]
scoreboard players set $id dt.tmp -999999
execute if data storage call_stack: global.dt.item_ids[0] store result score $id dt.tmp run data get storage call_stack: global.dt.item_ids[0]

execute if score $id dt.tmp matches 204 run function dt.crafting:internal/recipe/shaped/search_tree/204_0_204_ing3_start
execute if score $id dt.tmp matches 205 run function dt.crafting:internal/recipe/shaped/search_tree/204_0_205_ing3_start
execute if score $id dt.tmp matches 206 run function dt.crafting:internal/recipe/shaped/search_tree/204_0_206_ing3_start
execute if score $id dt.tmp matches 207 run function dt.crafting:internal/recipe/shaped/search_tree/204_0_207_ing3_start
execute if score $id dt.tmp matches 208 run function dt.crafting:internal/recipe/shaped/search_tree/204_0_208_ing3_start
execute if score $id dt.tmp matches 209 run function dt.crafting:internal/recipe/shaped/search_tree/204_0_209_ing3_start
execute if score $id dt.tmp matches 210 run function dt.crafting:internal/recipe/shaped/search_tree/204_0_210_ing3_start
execute if score $id dt.tmp matches 211 run function dt.crafting:internal/recipe/shaped/search_tree/204_0_211_ing3_start
