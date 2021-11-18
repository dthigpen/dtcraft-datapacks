data remove storage call_stack: global.dt.item_ids[0]
scoreboard players set $id dt.tmp -999999
execute if data storage call_stack: global.dt.item_ids[0] store result score $id dt.tmp run data get storage call_stack: global.dt.item_ids[0]

execute if score $id dt.tmp matches 736 run function dt.crafting:internal/recipe/shaped/search_tree/736_736_ing2_start
execute if score $id dt.tmp matches 809 run function dt.crafting:internal/recipe/shaped/search_tree/736_809_ing2_start
