function call_stack:push

data modify storage call_stack: this.users set from storage call_stack: this.arg0
data modify storage call_stack: this.user set from storage call_stack: this.arg1

data modify storage call_stack: this.other_users set value []

data modify storage call_stack: call.arg0 set from storage call_stack: this.arg0
data modify storage call_stack: call.arg1 set from storage call_stack: this.arg1.UUID
function dt.user_util:get_not_by_uuid
data modify storage call_stack: this.other_users set from storage call_stack: call.return
data modify storage call_stack: this.other_users prepend from storage call_stack: this.user

data modify storage call_stack: this.return set from storage call_stack: this.other_users

function call_stack:pop