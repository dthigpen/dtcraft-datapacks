#say sort group loop
function dtcraft:call_stack/push

data modify storage dtcraft:call_stack this.group_values set from storage dtcraft:call_stack this.arg0
data modify storage dtcraft:call_stack this.remaining_items set from storage dtcraft:call_stack this.arg1
data modify storage dtcraft:call_stack this.sorted_items set from storage dtcraft:call_stack this.arg2

execute if data storage dtcraft:call_stack this.remaining_items[0] run data modify storage dtcraft:call_stack call.arg0 set from storage dtcraft:call_stack this.group_values[0]
execute if data storage dtcraft:call_stack this.remaining_items[0] run data modify storage dtcraft:call_stack call.arg1 set from storage dtcraft:call_stack this.remaining_items
execute if data storage dtcraft:call_stack this.remaining_items[0] run data modify storage dtcraft:call_stack call.arg2 set value []
execute if data storage dtcraft:call_stack this.remaining_items[0] run data modify storage dtcraft:call_stack call.arg3 set from storage dtcraft:call_stack this.sorted_items
execute if data storage dtcraft:call_stack this.remaining_items[0] run function dtcraft:inv_sort/sort_remaining_loop
execute if data storage dtcraft:call_stack this.remaining_items[0] run data modify storage dtcraft:call_stack this.sorted_items set from storage dtcraft:call_stack call.result.sorted_items
execute if data storage dtcraft:call_stack this.remaining_items[0] run data modify storage dtcraft:call_stack this.new_remaining_items set from storage dtcraft:call_stack call.result.new_remaining_items
#Copy over new remaining items to original array

execute if data storage dtcraft:call_stack this.remaining_items[0] run data modify storage dtcraft:call_stack this.remaining_items set from storage dtcraft:call_stack this.new_remaining_items

data remove storage dtcraft:call_stack this.group_values[0]

# base case
execute unless data storage dtcraft:call_stack this.group_values[0] run data modify storage dtcraft:call_stack this.result set value {remaining_items:[], sorted_items:[]}
execute unless data storage dtcraft:call_stack this.group_values[0] run data modify storage dtcraft:call_stack this.result.sorted_items set from storage dtcraft:call_stack this.sorted_items
execute unless data storage dtcraft:call_stack this.group_values[0] run data modify storage dtcraft:call_stack this.result.remaining_items set from storage dtcraft:call_stack this.remaining_items

# loop
execute if data storage dtcraft:call_stack this.group_values[0] run data modify storage dtcraft:call_stack call.arg0 set from storage dtcraft:call_stack this.group_values
execute if data storage dtcraft:call_stack this.group_values[0] run data modify storage dtcraft:call_stack call.arg1 set from storage dtcraft:call_stack this.remaining_items
execute if data storage dtcraft:call_stack this.group_values[0] run data modify storage dtcraft:call_stack call.arg2 set from storage dtcraft:call_stack this.sorted_items
execute if data storage dtcraft:call_stack this.group_values[0] run function dtcraft:inv_sort/sort_group_loop
execute if data storage dtcraft:call_stack this.group_values[0] run data modify storage dtcraft:call_stack this.result set from storage dtcraft:call_stack call.result

function dtcraft:call_stack/pop