#> dt.array:api/pop_n
# pop n elements from the end of an array and return them
# @params
#   storage call_stack: call.arg0
#       array
# @output
#   storage call_stack: call.return
#       array
function call_stack:push
data modify storage call_stack: this.array set from storage call_stack: this.arg0
data modify storage call_stack: this.num_to_pop set from storage call_stack: this.arg1

data modify storage call_stack: call.arg0 set from storage call_stack: this.array
data modify storage call_stack: call.arg1 set from storage call_stack: this.num_to_pop
data modify storage call_stack: call.arg2 set value []
function dt.array:internal/pop_n_loop
data modify storage call_stack: this.return set from storage call_stack: call.return

function call_stack:pop