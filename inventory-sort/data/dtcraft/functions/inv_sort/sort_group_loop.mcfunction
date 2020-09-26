#say sort group loop

data modify storage dtcraft:inv_sort temp_remaining_items set from storage dtcraft:inv_sort remaining_items
data modify storage dtcraft:inv_sort new_remaining_items set value []
execute store result score size3 dt.tmp run data get storage dtcraft:inv_sort temp_remaining_items
execute if score size3 dt.tmp matches 1.. run function dtcraft:inv_sort/sort_remaining_loop

#Copy over new remaining items to original array
data modify storage dtcraft:inv_sort remaining_items set from storage dtcraft:inv_sort new_remaining_items

data remove storage dtcraft:inv_sort temp_order[0].values[0]
execute store result score size2 dt.tmp run data get storage dtcraft:inv_sort temp_order[0].values
execute if score size2 dt.tmp matches 1.. run function dtcraft:inv_sort/sort_group_loop