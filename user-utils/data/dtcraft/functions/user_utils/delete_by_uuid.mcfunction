data modify storage dtcraft:call_stack this.users set from storage dtcraft:call_stack this.arg0
data modify storage dtcraft:call_stack this.uuid set from storage dtcraft:call_stack this.arg1

data modify storage dtcraft:call_stack this.other_users set value []

data modify storage dtcraft:call_stack call.arg0 set from storage dtcraft:call_stack this.arg0
data modify storage dtcraft:call_stack call.arg1 set from storage dtcraft:call_stack this.arg1
function dtcraft:user_utils/get_by_uuid

data modify storage dtcraft:call_stack this.result.value set from storage dtcraft:call_stack this.other_users