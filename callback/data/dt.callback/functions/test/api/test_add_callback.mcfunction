function call_stack:push

data modify storage call_stack: call.arg0 set value "function dt.callback:test/api/sample_callback"
function dt.callback:api/add_callback_self

data modify storage call_stack: call.arg0 set value "function dt.callback:test/api/sample_callback_2"
function dt.callback:api/add_callback_self

function call_stack:pop