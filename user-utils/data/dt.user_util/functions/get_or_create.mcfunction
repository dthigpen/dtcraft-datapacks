#say get_or_create
function call_stack:push

data modify storage call_stack: this.users set from storage call_stack: this.arg0
data modify storage call_stack: call.arg0 set from storage call_stack: this.users
data modify storage call_stack: call.arg1 set from entity @s UUID
function dt.user_util:get_or_create_by_uuid
data modify storage call_stack: this.return set from storage call_stack: call.return

function call_stack:pop