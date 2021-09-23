#> dt.array:api/convert/to_key_values
# convert the given array of values into key value pair objects with the keys defaulting to sequence numbers 1..n.
# @params
#   storage call_stack: call.arg0
#       array
# @output
#   storage call_stack: call.return
#       array of objects [{key:1,value:a}..{key:n,value:z}]
function call_stack:push
data modify storage call_stack: this.keys set from storage call_stack: this.arg0
data modify storage call_stack: this.values set from storage call_stack: this.arg1
execute run data modify storage call_stack: call.arg0 set value []
execute run data modify storage call_stack: call.arg0 set from storage call_stack: this.keys
execute run data modify storage call_stack: call.arg1 set from storage call_stack: this.values
execute run data modify storage call_stack: call.arg2 set value []
execute run function dt.array:internal/convert/to_key_values_loop
execute run data modify storage call_stack: this.return set from storage call_stack: call.return

function call_stack:pop