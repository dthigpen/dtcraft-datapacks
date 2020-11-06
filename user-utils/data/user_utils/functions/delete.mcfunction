data modify storage call_stack: this.users set from storage call_stack: this.arg0

data modify storage call_stack: this.other_users set value []

data modify storage call_stack: call.arg0 set from storage call_stack: this.arg0
data modify storage call_stack: call.arg0 set from entity @s UUID
function user_utils:get_by_uuid

data modify storage call_stack: this.result set from storage call_stack: this.other_users