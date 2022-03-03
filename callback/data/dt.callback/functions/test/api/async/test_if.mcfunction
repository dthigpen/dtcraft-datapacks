data modify storage call_stack: call.arg0 set value []
data modify storage call_stack: call.arg0 append value "data modify storage call_stack: call.return set value true"
data modify storage call_stack: call.arg1 set value "say TRUE"
data modify storage call_stack: call.arg2 set value "say NOT TRUE"
function dt.callback:api/async/if