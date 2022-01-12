#> dt.array:api/convert/to_bytes
# Convert the given array of numbers into an array of bytes
# @params
#   storage call_stack: call.arg0
#       array of numbers
# @output
#   storage call_stack: this.return
#       array of bytes
function call_stack:push
data modify storage call_stack: call.arg0 set from storage call_stack: this.arg0
data modify storage call_stack: call.arg1 set value []
function dt.array:internal/convert/to_bytes_loop
data modify storage call_stack: this.return set from storage call_stack: call.return
function call_stack:pop