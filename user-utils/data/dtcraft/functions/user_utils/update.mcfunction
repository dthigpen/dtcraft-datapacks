function dtcraft:call_stack/push

data modify storage dtcraft:call_stack this.users set from storage dtcraft:call_stack this.arg0
data modify storage dtcraft:call_stack this.user set from storage dtcraft:call_stack this.arg1

data modify storage dtcraft:call_stack this.other_users set value []

data modify storage dtcraft:call_stack call.arg0 set from storage dtcraft:call_stack this.arg0
data modify storage dtcraft:call_stack call.arg1 set from storage dtcraft:call_stack this.arg1
function dtcraft:user_utils/get_not_by_uuid
data modify storage dtcraft:call_stack this.other_users set from storage dtcraft:call_stack this.calls[0].value
data modify storage dtcraft:call_stack this.other_users prepend from storage dtcraft:call_stack this.user

data modify storage dtcraft:call_stack this.result.value set from storage dtcraft:call_stack this.other_users

function dtcraft:call_stack/pop