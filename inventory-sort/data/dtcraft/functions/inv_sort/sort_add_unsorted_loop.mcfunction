#say sort_add_unsorted_loop

data modify storage dtcraft:inv_sort sorted_items append from storage dtcraft:inv_sort remaining_items[0]

data remove storage dtcraft:inv_sort remaining_items[0]
execute store result score size1 dt.tmp run data get storage dtcraft:inv_sort remaining_items
execute if score size1 dt.tmp matches 1.. run function dtcraft:inv_sort/sort_add_unsorted_loop