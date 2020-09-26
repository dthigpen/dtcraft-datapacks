#say to shulker loop

execute store result storage dtcraft:inv_sort sorted_items[0].Slot int 1 run scoreboard players get size2 dt.tmp
data modify block 2999999 255 2999999 Items append from storage dtcraft:inv_sort sorted_items[0]
scoreboard players add size2 dt.tmp 1

data remove storage dtcraft:inv_sort sorted_items[0]
execute store result score size1 dt.tmp run data get storage dtcraft:inv_sort sorted_items
execute if score size1 dt.tmp matches 1.. run function dtcraft:inv_sort/sort_to_shulker_loop