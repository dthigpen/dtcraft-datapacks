#say sort remaining loop

scoreboard players set result dt.tmp 1
data modify storage dtcraft:inv_sort value1 set from storage dtcraft:inv_sort temp_order[0].values[0]
execute store success score result dt.tmp run data modify storage dtcraft:inv_sort value1 set from storage dtcraft:inv_sort temp_remaining_items[0].id
execute if score result dt.tmp matches 0 run data modify storage dtcraft:inv_sort sorted_items append from storage dtcraft:inv_sort temp_remaining_items[0]
execute unless score result dt.tmp matches 0 run data modify storage dtcraft:inv_sort new_remaining_items append from storage dtcraft:inv_sort temp_remaining_items[0]


data remove storage dtcraft:inv_sort temp_remaining_items[0]
execute store result score size3 dt.tmp run data get storage dtcraft:inv_sort temp_remaining_items
execute if score size3 dt.tmp matches 1.. run function dtcraft:inv_sort/sort_remaining_loop