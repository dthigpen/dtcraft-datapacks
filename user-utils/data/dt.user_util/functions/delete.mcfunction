data modify storage call_stack: this.users set from storage call_stack: this.arg0

data modify storage call_stack: this.other_users set value []

data modify storage call_stack: call.arg0 set from storage call_stack: this.arg0
data modify storage call_stack: call.arg0 set from entity @s UUID
function dt.user_util:get_by_uuid

data modify storage call_stack: this.return set from storage call_stack: this.other_users