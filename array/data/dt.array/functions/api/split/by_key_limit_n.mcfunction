#> dt.array:api/split/by_key_limit_n
# splits the given list into two lists, first for elements containing the key, and the second its complement
# @params
#   storage call_stack: call.arg0
#       array
#   storage call_stack: call.arg1
#       key to match elements on
#   storage call_stack: call.arg2
#       limit integer, maximum number of results that match the key
# @output
#   storage call_stack: call.return
#       array of two arrays. [[with-key],[complement]]
# splits the given list into two lists, first for elements containing the key, and the second its complement
function call_stack:push

data modify storage call_stack: this.all_items set from storage call_stack: this.arg0
data modify storage call_stack: this.key set from storage call_stack: this.arg1
data modify storage call_stack: this.limit set from storage call_stack: this.arg2

data modify storage call_stack: this.return set value [[],[]]
execute if data storage call_stack: this.all_items[0] run data modify storage call_stack: call.arg0 set from storage call_stack: this.all_items
execute if data storage call_stack: this.all_items[0] run data modify storage call_stack: call.arg1 set from storage call_stack: this.key
execute if data storage call_stack: this.all_items[0] run data modify storage call_stack: call.arg2 set value []
execute if data storage call_stack: this.all_items[0] run data modify storage call_stack: call.arg3 set value []
execute if data storage call_stack: this.all_items[0] run data modify storage call_stack: call.arg4 set from storage call_stack: this.limit
execute if data storage call_stack: this.all_items[0] run function dt.array:internal/split_by_key_loop
execute if data storage call_stack: this.all_items[0] run data modify storage call_stack: this.return set from storage call_stack: call.return
function call_stack:pop