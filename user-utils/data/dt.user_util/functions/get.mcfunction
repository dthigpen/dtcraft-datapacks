function call_stack:push

data modify storage call_stack: call.arg0 set from storage call_stack: this.arg0
data modify storage call_stack: call.arg1 set from entity @s UUID
function dt.user_util:get_by_uuid
data modify storage call_stack: this.result set from storage call_stack: call.result

function call_stack:pop