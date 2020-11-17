# splits the given list into two lists, first for elements containing the key, and the second its complement
function call_stack:push

data modify storage call_stack: this.all_items set from storage call_stack: this.arg0
data modify storage call_stack: this.key set from storage call_stack: this.arg1

data modify storage call_stack: this.result set value [[],[]]
execute if data storage call_stack: this.all_items[0] run data modify storage call_stack: call.arg0 set from storage call_stack: this.all_items
execute if data storage call_stack: this.all_items[0] run data modify storage call_stack: call.arg1 set from storage call_stack: this.key
execute if data storage call_stack: this.all_items[0] run data modify storage call_stack: call.arg2 set value []
execute if data storage call_stack: this.all_items[0] run data modify storage call_stack: call.arg3 set value []
execute if data storage call_stack: this.all_items[0] run function dt.crafting_util:internal/array/split_by_key_loop
execute if data storage call_stack: this.all_items[0] run data modify storage call_stack: this.result set from storage call_stack: call.result
function call_stack:pop