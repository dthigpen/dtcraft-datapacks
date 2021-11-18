data remove storage call_stack: global.dt.item_ids[0]
scoreboard players set $id dt.tmp -999999
execute if data storage call_stack: global.dt.item_ids[0] store result score $id dt.tmp run data get storage call_stack: global.dt.item_ids[0]

execute if score $id dt.tmp matches 204 run function dt.crafting:internal/recipe/shaped/search_tree/204_0_204_n2_204_0_204_n2_204_204_ing10_start
execute if score $id dt.tmp matches 205 run function dt.crafting:internal/recipe/shaped/search_tree/204_0_204_n2_204_0_204_n2_204_205_ing10_start
execute if score $id dt.tmp matches 206 run function dt.crafting:internal/recipe/shaped/search_tree/204_0_204_n2_204_0_204_n2_204_206_ing10_start
execute if score $id dt.tmp matches 207 run function dt.crafting:internal/recipe/shaped/search_tree/204_0_204_n2_204_0_204_n2_204_207_ing10_start
execute if score $id dt.tmp matches 208 run function dt.crafting:internal/recipe/shaped/search_tree/204_0_204_n2_204_0_204_n2_204_208_ing10_start
execute if score $id dt.tmp matches 209 run function dt.crafting:internal/recipe/shaped/search_tree/204_0_204_n2_204_0_204_n2_204_209_ing10_start
execute if score $id dt.tmp matches 210 run function dt.crafting:internal/recipe/shaped/search_tree/204_0_204_n2_204_0_204_n2_204_210_ing10_start
execute if score $id dt.tmp matches 211 run function dt.crafting:internal/recipe/shaped/search_tree/204_0_204_n2_204_0_204_n2_204_211_ing10_start
