data remove storage call_stack: global.dt.item_ids[0]
scoreboard players set $id dt.tmp -999999
execute if data storage call_stack: global.dt.item_ids[0] store result score $id dt.tmp run data get storage call_stack: global.dt.item_ids[0]

execute if score $id dt.tmp matches 297 run function dt.crafting:internal/recipe/shaped/search_tree/401_401_401_n2_401_401_297_ing7_start
execute if score $id dt.tmp matches 401 run function dt.crafting:internal/recipe/shaped/search_tree/401_401_401_n2_401_401_401_ing7_start
