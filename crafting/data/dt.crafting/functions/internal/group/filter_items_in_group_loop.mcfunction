function call_stack:push
data modify storage call_stack: this.items set from storage call_stack: this.arg0
data modify storage call_stack: this.group_values set from storage call_stack: this.arg1
data modify storage call_stack: this.filtered set from storage call_stack: this.arg2

data modify storage call_stack: call.arg0 set from storage call_stack: this.group_values
data modify storage call_stack: call.arg1 set from storage call_stack: this.items[0].id
function dt.array:api/split_by_key
data modify storage call_stack: this.matches set from storage call_stack: call.result[0]
execute if data storage call_stack: this.matches[0] run data modify storage call_stack: this.filtered append from storage call_stack: this.items[0]

data modify storage call_stack: this.result set from storage call_stack: this.filtered

data remove storage call_stack: this.items[0]
execute if data storage call_stack: this.items[0] if data storage call_stack: this.group_values[0] run data modify storage call_stack: call.arg0 set from storage call_stack: this.items
execute if data storage call_stack: this.items[0] if data storage call_stack: this.group_values[0] run data modify storage call_stack: call.arg1 set from storage call_stack: this.group_values
execute if data storage call_stack: this.items[0] if data storage call_stack: this.group_values[0] run data modify storage call_stack: call.arg2 set from storage call_stack: this.filtered
execute if data storage call_stack: this.items[0] if data storage call_stack: this.group_values[0] run function dt.crafting:internal/group/filter_items_in_group_loop
execute if data storage call_stack: this.items[0] if data storage call_stack: this.group_values[0] run data modify storage call_stack: this.result set from storage call_stack: call.result

function call_stack:pop