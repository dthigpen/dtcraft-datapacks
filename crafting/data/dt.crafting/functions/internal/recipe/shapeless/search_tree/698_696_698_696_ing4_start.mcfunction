data remove storage call_stack: global.dt.item_ids[0]
scoreboard players set $id dt.tmp -999999
execute if data storage call_stack: global.dt.item_ids[0] store result score $id dt.tmp run data get storage call_stack: global.dt.item_ids[0]

execute if score $id dt.tmp matches 69 run function dt.crafting:internal/recipe/shapeless/search_tree/698_696_698_696_69_ing5_start
execute if score $id dt.tmp matches 696 run function dt.crafting:internal/recipe/shapeless/search_tree/698_696_698_696_696_ing5_start
execute if score $id dt.tmp matches 698 run function dt.crafting:internal/recipe/shapeless/search_tree/698_696_698_696_698_ing5_start
