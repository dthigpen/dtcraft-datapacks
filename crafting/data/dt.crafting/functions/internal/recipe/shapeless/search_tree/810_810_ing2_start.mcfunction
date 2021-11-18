data remove storage call_stack: global.dt.item_ids[0]
scoreboard players set $id dt.tmp -999999
execute if data storage call_stack: global.dt.item_ids[0] store result score $id dt.tmp run data get storage call_stack: global.dt.item_ids[0]

execute if score $id dt.tmp matches 177 run function dt.crafting:internal/recipe/shapeless/search_tree/810_810_177_ing3_start
execute if score $id dt.tmp matches 180 run function dt.crafting:internal/recipe/shapeless/search_tree/810_810_180_ing3_start
execute if score $id dt.tmp matches 182 run function dt.crafting:internal/recipe/shapeless/search_tree/810_810_182_ing3_start
execute if score $id dt.tmp matches 817 run function dt.crafting:internal/recipe/shapeless/search_tree/810_810_817_ing3_start
execute if score $id dt.tmp matches 825 run function dt.crafting:internal/recipe/shapeless/search_tree/810_810_825_ing3_start
