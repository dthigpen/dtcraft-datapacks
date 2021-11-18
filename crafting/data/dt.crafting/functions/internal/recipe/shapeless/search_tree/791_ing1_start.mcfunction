data remove storage call_stack: global.dt.item_ids[0]
scoreboard players set $id dt.tmp -999999
execute if data storage call_stack: global.dt.item_ids[0] store result score $id dt.tmp run data get storage call_stack: global.dt.item_ids[0]

execute if score $id dt.tmp matches 182 run function dt.crafting:internal/recipe/shapeless/search_tree/791_182_ing2_start
execute if score $id dt.tmp matches 734 run function dt.crafting:internal/recipe/shapeless/search_tree/791_734_ing2_start
execute if score $id dt.tmp matches 767 run function dt.crafting:internal/recipe/shapeless/search_tree/791_767_ing2_start
execute if score $id dt.tmp matches 781 run function dt.crafting:internal/recipe/shapeless/search_tree/791_781_ing2_start
execute if score $id dt.tmp matches 791 run function dt.crafting:internal/recipe/shapeless/search_tree/791_791_ing2_start
execute if score $id dt.tmp matches 954 run function dt.crafting:internal/recipe/shapeless/search_tree/791_954_ing2_start
execute if score $id dt.tmp matches 957 run function dt.crafting:internal/recipe/shapeless/search_tree/791_957_ing2_start
