function call_stack:push
data modify storage call_stack: this.array set from storage call_stack: this.arg0

execute run data modify storage call_stack: call.arg0 set from storage call_stack: this.array
execute run data modify storage call_stack: call.arg1 set value []
execute run function dt.array:internal/convert/to_values_loop
execute run data modify storage call_stack: this.result set from storage call_stack: call.result

function call_stack:pop