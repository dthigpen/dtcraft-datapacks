#say create
function call_stack:push

data modify storage call_stack: call.arg0 set from entity @s UUID
function user_utils:create_by_uuid
data modify storage call_stack: this.result set from storage call_stack: call.result
function call_stack:pop