say queueing up
data modify storage call_stack: call.arg0 set value "say one"
function dt.callback:api/queue
data modify storage call_stack: call.arg0 set value "say two"
function dt.callback:api/queue
data modify storage call_stack: call.arg0 set value "say three"
function dt.callback:api/queue
data modify storage call_stack: call.arg0 set value "say four"
function dt.callback:api/queue
data modify storage call_stack: call.arg0 set value "say 5"
function dt.callback:api/queue
data modify storage call_stack: call.arg0 set value "say 6"
function dt.callback:api/queue
data modify storage call_stack: call.arg0 set value "say 7"
function dt.callback:api/queue
