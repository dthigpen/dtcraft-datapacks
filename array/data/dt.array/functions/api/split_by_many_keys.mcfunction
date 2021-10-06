#> dt.array:api/split_by_many_keys
# splits the given list into two lists, first for elements containing the key, and the second its complement
# @params
#   storage call_stack: call.arg0
#       array
#   storage call_stack: call.arg1
#       key to match elements on
# @output
#   storage call_stack: call.return
#       array of two arrays. [[with-key],[complement]]
function call_stack:push

data modify storage call_stack: this.values set from storage call_stack: this.arg0
data modify storage call_stack: this.keys set from storage call_stack: this.arg1

data modify storage call_stack: call.arg0 set from storage call_stack: this.values
data modify storage call_stack: call.arg1 set from storage call_stack: this.keys
data modify storage call_stack: call.arg2 set value [[],[]]
function dt.array:internal/split_by_many_keys_loop
data modify storage call_stack: this.return set from storage call_stack: call.return
function call_stack:pop