#> dt.array:api/unique
# Get the unique elements of the given array
# @params
#   storage call_stack: call.arg0
#       array
# @output
#   storage call_stack: this.return
#       array
function call_stack:push
data modify storage call_stack: call.arg0 set from storage call_stack: this.arg0
data modify storage call_stack: call.arg1 set value []
function dt.array:internal/unique_loop
data modify storage call_stack: this.return set from storage call_stack: call.return
function call_stack:pop