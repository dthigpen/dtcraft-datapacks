function call_stack:push
data modify storage call_stack: this.items set from storage call_stack: this.arg0
data modify storage call_stack: this.group_values set from storage call_stack: this.arg1

execute if data storage call_stack: this.items[0] if data storage call_stack: this.group_values[0] run data modify storage call_stack: call.arg0 set from storage call_stack: this.items
execute if data storage call_stack: this.items[0] if data storage call_stack: this.group_values[0] run data modify storage call_stack: call.arg1 set from storage call_stack: this.group_values
execute if data storage call_stack: this.items[0] if data storage call_stack: this.group_values[0] run data modify storage call_stack: call.arg2 set value []
execute if data storage call_stack: this.items[0] if data storage call_stack: this.group_values[0] run function dt.crafting:internal/group/filter_items_in_group_loop
execute if data storage call_stack: this.items[0] if data storage call_stack: this.group_values[0] run data modify storage call_stack: this.return set from storage call_stack: call.return

function call_stack:pop