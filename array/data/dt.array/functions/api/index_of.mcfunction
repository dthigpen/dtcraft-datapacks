#> dt.array:api/index_of
# get the index of a value in an array
# @params
#   storage call_stack: call.arg0
#       array
#   storage call_stack: call.arg1
#       value
# @output
#   storage call_stack: call.return
#       index of item in array or -1 if not found
function call_stack:push
data modify storage call_stack: this.array set from storage call_stack: this.arg0
data modify storage call_stack: this.value set from storage call_stack: this.arg1

data modify storage call_stack: this.return set value -1
data modify storage call_stack: call.arg0 set from storage call_stack: this.array
data modify storage call_stack: call.arg1 set from storage call_stack: this.value
data modify storage call_stack: call.arg2 set value 0
function dt.array:internal/index_of_loop
data modify storage call_stack: this.return set from storage call_stack: call.return

function call_stack:pop