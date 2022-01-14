execute if score $id dt.tmp matches 1..512 run function dt.inventory:internal/item/id_search_tree/l0_min_1_max_512
execute if score $id dt.tmp matches 513..1024 run function dt.inventory:internal/item/id_search_tree/l0_min_513_max_1024
execute if score $id dt.tmp matches 1025..1100 run function dt.inventory:internal/item/id_search_tree/l0_min_1025_max_1100
scoreboard players reset $id dt.tmp