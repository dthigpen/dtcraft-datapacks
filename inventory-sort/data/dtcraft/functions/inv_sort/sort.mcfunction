#say sort

#region get user inventory
function dtcraft:inventory_utils/get_inventory
data modify storage dtcraft:inv_sort remaining_items set from storage dtcraft:call_stack this.calls[0].value
#endregion

#region get user hotbar
function dtcraft:inventory_utils/get_hotbar
data modify storage dtcraft:inv_sort hotbar_items set from storage dtcraft:call_stack this.calls[0].value
#endregion

data modify storage dtcraft:inv_sort sorted_items set value []
data modify storage dtcraft:inv_sort temp_order set from storage dtcraft:inv_sort Order

#region pull items for each group
execute store result score size1 dt.tmp run data get storage dtcraft:inv_sort temp_order
execute if score size1 dt.tmp matches 1.. run function dtcraft:inv_sort/sort_order_loop
#endregion


#region create sorted items list items
execute store result score size1 dt.tmp run data get storage dtcraft:inv_sort remaining_items
execute if score size1 dt.tmp matches 1.. run function dtcraft:inv_sort/sort_add_unsorted_loop
#endregion

#region fill shulker with sorted items
data modify block 2999999 255 2999999 Items set value []
loot replace entity @s inventory.0 27 mine 2999999 255 2999999 minecraft:stick{drop_contents:true}
scoreboard players set size2 dt.tmp 0
execute store result score size1 dt.tmp run data get storage dtcraft:inv_sort sorted_items
execute if score size1 dt.tmp matches 1.. run function dtcraft:inv_sort/sort_to_shulker_loop
#endregion

#region fill hotbar with placeholders
replaceitem entity @s hotbar.0 minecraft:stick{placeholder:0b}
replaceitem entity @s hotbar.1 minecraft:stick{placeholder:1b}
replaceitem entity @s hotbar.2 minecraft:stick{placeholder:2b}
replaceitem entity @s hotbar.3 minecraft:stick{placeholder:3b}
replaceitem entity @s hotbar.4 minecraft:stick{placeholder:4b}
replaceitem entity @s hotbar.5 minecraft:stick{placeholder:5b}
replaceitem entity @s hotbar.6 minecraft:stick{placeholder:6b}
replaceitem entity @s hotbar.7 minecraft:stick{placeholder:7b}
replaceitem entity @s hotbar.8 minecraft:stick{placeholder:8b}
#endregion

#region give player their items back
loot give @s mine 2999999 255 2999999 minecraft:stick{drop_contents:true}

data modify block 2999999 255 2999999 Items set from storage dtcraft:inv_sort hotbar_items
loot replace entity @s hotbar.0 9 mine 2999999 255 2999999 minecraft:stick{drop_contents:true}
data modify block 2999999 255 2999999 Items set value []
#endregion

tellraw @s {"text":"Inventory Sorted","color":"dark_green"}