#say get_or_create

data modify storage dtcraft:call_stack this.users set from storage dtcraft:call_stack this.arg0
data modify storage dtcraft:call_stack call.arg0 set from entity @s UUID
function dtcraft:user_utils/get_or_create_by_uuid