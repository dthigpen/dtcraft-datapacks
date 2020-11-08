#say sort remaining loop
function call_stack:push

data modify storage call_stack: this.value_from_group set from storage call_stack: this.arg0
data modify storage call_stack: this.temp_remaining_items set from storage call_stack: this.arg1
data modify storage call_stack: this.new_remaining_items set from storage call_stack: this.arg2
data modify storage call_stack: this.sorted_items set from storage call_stack: this.arg3

data modify storage call_stack: this.value1 set from storage call_stack: this.value_from_group
execute store success storage call_stack: this.not_equal byte 1 run data modify storage call_stack: this.value1 set from storage call_stack: this.temp_remaining_items[0].id
execute if data storage call_stack: {this:{not_equal:false}} run data modify storage call_stack: this.sorted_items append from storage call_stack: this.temp_remaining_items[0]
execute if data storage call_stack: {this:{not_equal:true}} run data modify storage call_stack: this.new_remaining_items append from storage call_stack: this.temp_remaining_items[0]

data remove storage call_stack: this.temp_remaining_items[0]

# base case
execute unless data storage call_stack: this.temp_remaining_items[0] run data modify storage call_stack: this.result set value {sorted_items:[], new_remaining_items:[]}
execute unless data storage call_stack: this.temp_remaining_items[0] run data modify storage call_stack: this.result.sorted_items set from storage call_stack: this.sorted_items
execute unless data storage call_stack: this.temp_remaining_items[0] run data modify storage call_stack: this.result.new_remaining_items set from storage call_stack: this.new_remaining_items

# loop
execute if data storage call_stack: this.temp_remaining_items[0] run data modify storage call_stack: call.arg0 set from storage call_stack: this.value_from_group
execute if data storage call_stack: this.temp_remaining_items[0] run data modify storage call_stack: call.arg1 set from storage call_stack: this.temp_remaining_items
execute if data storage call_stack: this.temp_remaining_items[0] run data modify storage call_stack: call.arg2 set from storage call_stack: this.new_remaining_items
execute if data storage call_stack: this.temp_remaining_items[0] run data modify storage call_stack: call.arg3 set from storage call_stack: this.sorted_items
execute if data storage call_stack: this.temp_remaining_items[0] run function dt.inv_sort:sort_remaining_loop
execute if data storage call_stack: this.temp_remaining_items[0] run data modify storage call_stack: this.result set from storage call_stack: call.result

function call_stack:pop