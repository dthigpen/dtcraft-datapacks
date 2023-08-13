#> dt.array:api/split/by_key
# splits the given list into two lists, first for elements containing the key, and the second its complement
# @input
#   storage call_stack: call.arg0
#       array
#   storage call_stack: call.arg1
#       key to match elements on
# @output
#   storage call_stack: call.return
#       array of two arrays. [[with-key],[complement]]
function call_stack:push

data modify storage call_stack: this.all_items set from storage call_stack: this.arg0
data modify storage call_stack: this.key set from storage call_stack: this.arg1

data modify storage call_stack: this.return set value [[],[]]
execute if data storage call_stack: this.all_items[0] run data modify storage call_stack: call.arg0 set from storage call_stack: this.all_items
execute if data storage call_stack: this.all_items[0] run data modify storage call_stack: call.arg1 set from storage call_stack: this.key
execute if data storage call_stack: this.all_items[0] run data modify storage call_stack: call.arg2 set value []
execute if data storage call_stack: this.all_items[0] run data modify storage call_stack: call.arg3 set value []
execute if data storage call_stack: this.all_items[0] store result storage call_stack: call.arg4 int 1 run data get storage call_stack: this.all_items
execute if data storage call_stack: this.all_items[0] run function dt.array:internal/split_by_key_loop
execute if data storage call_stack: this.all_items[0] run data modify storage call_stack: this.return set from storage call_stack: call.return
function call_stack:pop