data remove storage call_stack: global.dt.item_ids[0]
scoreboard players set $id dt.tmp -999999
execute if data storage call_stack: global.dt.item_ids[0] store result score $id dt.tmp run data get storage call_stack: global.dt.item_ids[0]

execute if score $id dt.tmp matches 37 run function dt.crafting:internal/recipe/shaped/search_tree/824_37_ing2_start
execute if score $id dt.tmp matches 157 run function dt.crafting:internal/recipe/shaped/search_tree/824_157_ing2_start
execute if score $id dt.tmp matches 810 run function dt.crafting:internal/recipe/shaped/search_tree/824_810_ing2_start
execute if score $id dt.tmp matches 814 run function dt.crafting:internal/recipe/shaped/search_tree/824_814_ing2_start
execute if score $id dt.tmp matches -999999 run data modify storage call_stack: global.dt.recipes append value [811, 1]
execute if score $id dt.tmp matches -999999 run data modify storage call_stack: global.dt.recipes append value [816, 2]
