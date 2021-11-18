data remove storage call_stack: global.dt.item_ids[0]
scoreboard players set $id dt.tmp -999999
execute if data storage call_stack: global.dt.item_ids[0] store result score $id dt.tmp run data get storage call_stack: global.dt.item_ids[0]

execute if score $id dt.tmp matches 204 run function dt.crafting:internal/recipe/shaped/search_tree/143_143_143_n2_689_689_689_n2_204_ing9_start
execute if score $id dt.tmp matches 205 run function dt.crafting:internal/recipe/shaped/search_tree/143_143_143_n2_689_689_689_n2_205_ing9_start
execute if score $id dt.tmp matches 206 run function dt.crafting:internal/recipe/shaped/search_tree/143_143_143_n2_689_689_689_n2_206_ing9_start
execute if score $id dt.tmp matches 207 run function dt.crafting:internal/recipe/shaped/search_tree/143_143_143_n2_689_689_689_n2_207_ing9_start
execute if score $id dt.tmp matches 208 run function dt.crafting:internal/recipe/shaped/search_tree/143_143_143_n2_689_689_689_n2_208_ing9_start
execute if score $id dt.tmp matches 209 run function dt.crafting:internal/recipe/shaped/search_tree/143_143_143_n2_689_689_689_n2_209_ing9_start
execute if score $id dt.tmp matches 210 run function dt.crafting:internal/recipe/shaped/search_tree/143_143_143_n2_689_689_689_n2_210_ing9_start
execute if score $id dt.tmp matches 211 run function dt.crafting:internal/recipe/shaped/search_tree/143_143_143_n2_689_689_689_n2_211_ing9_start
