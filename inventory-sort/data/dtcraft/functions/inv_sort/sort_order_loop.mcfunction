#say sort order loop

execute store result score size2 dt.tmp run data get storage dtcraft:inv_sort temp_order[0].values
execute if score size2 dt.tmp matches 1.. run function dtcraft:inv_sort/sort_group_loop



data remove storage dtcraft:inv_sort temp_order[0]
execute store result score size1 dt.tmp run data get storage dtcraft:inv_sort temp_order
execute if score size1 dt.tmp matches 1.. run function dtcraft:inv_sort/sort_order_loop