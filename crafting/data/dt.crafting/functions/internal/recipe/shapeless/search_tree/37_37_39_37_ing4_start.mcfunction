data remove storage call_stack: global.dt.item_ids[0]
scoreboard players set $id dt.tmp -999999
execute if data storage call_stack: global.dt.item_ids[0] store result score $id dt.tmp run data get storage call_stack: global.dt.item_ids[0]

execute if score $id dt.tmp matches 37..819 run function dt.crafting:internal/recipe/shapeless/search_tree/37_37_39_37_l0_min_37_max_819
execute if score $id dt.tmp matches 820..825 run function dt.crafting:internal/recipe/shapeless/search_tree/37_37_39_37_l0_min_820_max_825
