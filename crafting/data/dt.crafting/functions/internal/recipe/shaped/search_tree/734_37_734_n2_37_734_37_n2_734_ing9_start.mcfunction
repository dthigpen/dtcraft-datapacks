data remove storage call_stack: global.dt.item_ids[0]
scoreboard players set $id dt.tmp -999999
execute if data storage call_stack: global.dt.item_ids[0] store result score $id dt.tmp run data get storage call_stack: global.dt.item_ids[0]

execute if score $id dt.tmp matches 37 run function dt.crafting:internal/recipe/shaped/search_tree/734_37_734_n2_37_734_37_n2_734_37_ing10_start
execute if score $id dt.tmp matches 38 run function dt.crafting:internal/recipe/shaped/search_tree/734_37_734_n2_37_734_37_n2_734_38_ing10_start
