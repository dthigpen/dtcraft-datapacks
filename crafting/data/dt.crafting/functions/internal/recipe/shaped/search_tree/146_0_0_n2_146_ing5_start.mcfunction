data remove storage call_stack: global.dt.item_ids[0]
scoreboard players set $id dt.tmp -999999
execute if data storage call_stack: global.dt.item_ids[0] store result score $id dt.tmp run data get storage call_stack: global.dt.item_ids[0]

execute if score $id dt.tmp matches 146 run function dt.crafting:internal/recipe/shaped/search_tree/146_0_0_n2_146_146_ing6_start
execute if score $id dt.tmp matches 147 run function dt.crafting:internal/recipe/shaped/search_tree/146_0_0_n2_146_147_ing6_start
execute if score $id dt.tmp matches 148 run function dt.crafting:internal/recipe/shaped/search_tree/146_0_0_n2_146_148_ing6_start
