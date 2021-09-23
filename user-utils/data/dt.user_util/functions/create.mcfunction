#say create
function call_stack:push

data modify storage call_stack: call.arg0 set from entity @s UUID
function dt.user_util:create_by_uuid
data modify storage call_stack: this.return set from storage call_stack: call.return
function call_stack:pop