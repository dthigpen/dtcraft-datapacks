#say sort_add_unsorted_loop
function dtcraft:call_stack/push

data modify storage dtcraft:call_stack this.sorted_items set from storage dtcraft:call_stack this.arg0
data modify storage dtcraft:call_stack this.remaining_items set from storage dtcraft:call_stack this.arg1

data modify storage dtcraft:call_stack this.sorted_items append from storage dtcraft:call_stack this.remaining_items[0]

data remove storage dtcraft:call_stack this.remaining_items[0]

# base case
execute unless data storage dtcraft:call_stack this.remaining_items[0] run data modify storage dtcraft:call_stack this.result set from storage dtcraft:call_stack this.sorted_items

# loop
execute if data storage dtcraft:call_stack this.remaining_items[0] run data modify storage dtcraft:call_stack call.arg0 set from storage dtcraft:call_stack this.sorted_items
execute if data storage dtcraft:call_stack this.remaining_items[0] run data modify storage dtcraft:call_stack call.arg1 set from storage dtcraft:call_stack this.remaining_items
execute if data storage dtcraft:call_stack this.remaining_items[0] run function dtcraft:inv_sort/sort_add_unsorted_loop
execute if data storage dtcraft:call_stack this.remaining_items[0] run data modify storage dtcraft:call_stack this.result set from storage dtcraft:call_stack call.result
function dtcraft:call_stack/pop