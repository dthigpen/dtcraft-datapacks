data remove storage call_stack: global.dt.item_ids[0]
scoreboard players set $id dt.tmp -999999
execute if data storage call_stack: global.dt.item_ids[0] store result score $id dt.tmp run data get storage call_stack: global.dt.item_ids[0]

execute if score $id dt.tmp matches 684 run function dt.crafting:internal/recipe/shapeless/search_tree/734_684_ing2_start
execute if score $id dt.tmp matches 685 run function dt.crafting:internal/recipe/shapeless/search_tree/734_685_ing2_start
execute if score $id dt.tmp matches 791 run function dt.crafting:internal/recipe/shapeless/search_tree/734_791_ing2_start
execute if score $id dt.tmp matches 867 run function dt.crafting:internal/recipe/shapeless/search_tree/734_867_ing2_start
