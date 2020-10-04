function dtcraft:call_stack/push

data modify storage dtcraft:call_stack call.arg0 set from storage dtcraft:call_stack this.arg0
data modify storage dtcraft:call_stack call.arg1 set from entity @s UUID
function dtcraft:user_utils/get_by_uuid
data modify storage dtcraft:call_stack this.result set from storage dtcraft:call_stack call.result

function dtcraft:call_stack/pop