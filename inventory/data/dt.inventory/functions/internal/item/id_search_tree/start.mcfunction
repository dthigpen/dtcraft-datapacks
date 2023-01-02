execute if score $id dt.tmp matches 0..511 run function dt.inventory:internal/item/id_search_tree/l0_min_0_max_511
execute if score $id dt.tmp matches 512..1023 run function dt.inventory:internal/item/id_search_tree/l0_min_512_max_1023
execute if score $id dt.tmp matches 1024..1151 run function dt.inventory:internal/item/id_search_tree/l0_min_1024_max_1151
scoreboard players reset $id dt.tmp