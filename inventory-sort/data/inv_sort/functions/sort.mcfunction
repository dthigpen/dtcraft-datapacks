#say sort
function call_stack:push


scoreboard players reset @s dt.sort
scoreboard players enable @s dt.sort


#region get user inventory
function inv_utils:get_inventory
data modify storage call_stack: this.remaining_items set from storage call_stack: call.result
#endregion

#region get user hotbar
function inv_utils:get_hotbar
data modify storage call_stack: this.hotbar_items set from storage call_stack: call.result
#endregion

data modify storage call_stack: this.sorted_items set value []
data modify storage call_stack: this.temp_order set from storage dtcraft:inv_sort group_order

#region pull items for each group
execute if data storage call_stack: this.temp_order[0] run data modify storage call_stack: call.arg0 set from storage call_stack: this.temp_order
execute if data storage call_stack: this.temp_order[0] run data modify storage call_stack: call.arg1 set from storage call_stack: this.remaining_items
execute if data storage call_stack: this.temp_order[0] run data modify storage call_stack: call.arg2 set from storage call_stack: this.sorted_items
execute if data storage call_stack: this.temp_order[0] run function inv_sort:sort_order_loop
execute if data storage call_stack: this.temp_order[0] run data modify storage call_stack: this.remaining_items set from storage call_stack: call.result.remaining_items
execute if data storage call_stack: this.temp_order[0] run data modify storage call_stack: this.sorted_items set from storage call_stack: call.result.sorted_items
#endregion

execute if data storage call_stack: this.remaining_items[0] run data modify storage call_stack: call.arg0 set from storage call_stack: this.sorted_items
execute if data storage call_stack: this.remaining_items[0] run data modify storage call_stack: call.arg1 set from storage call_stack: this.remaining_items
execute if data storage call_stack: this.remaining_items[0] run function inv_sort:sort_add_unsorted_loop
execute if data storage call_stack: this.remaining_items[0] run data modify storage call_stack: this.sorted_items set from storage call_stack: call.result

#region fill shulker with sorted items
data modify block 2999999 255 2999999 Items set value []
execute if data storage call_stack: this.sorted_items[0] run loot replace entity @s inventory.0 27 mine 2999999 255 2999999 minecraft:stick{drop_contents:true}
execute if data storage call_stack: this.sorted_items[0] run data modify storage call_stack: call.arg0 set from storage call_stack: this.sorted_items
execute if data storage call_stack: this.sorted_items[0] run function inv_sort:sort_to_shulker_loop
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

data modify block 2999999 255 2999999 Items set from storage call_stack: this.hotbar_items
loot replace entity @s hotbar.0 9 mine 2999999 255 2999999 minecraft:stick{drop_contents:true}
data modify block 2999999 255 2999999 Items set value []
#endregion

tellraw @s {"text":"Inventory Sorted","color":"dark_green"}

function call_stack:pop