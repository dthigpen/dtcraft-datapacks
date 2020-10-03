#say create
function dtcraft:call_stack/push

data modify storage dtcraft:call_stack call.arg0 set from entity @s UUID
function dtcraft:user_utils/create_by_uuid
data modify storage dtcraft:call_stack this.result.value set from storage dtcraft:call_stack this.calls[0].value
function dtcraft:call_stack/pop