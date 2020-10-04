#say get
function dtcraft:call_stack/push


data modify storage dtcraft:call_stack this.users set from storage dtcraft:call_stack this.arg0
data modify storage dtcraft:call_stack this.uuid set from storage dtcraft:call_stack this.arg1

data modify storage dtcraft:call_stack this.user set value {}
execute if data storage dtcraft:call_stack this.users[0] run data modify storage dtcraft:call_stack call.arg0 set from storage dtcraft:call_stack this.arg0
execute if data storage dtcraft:call_stack this.users[0] run data modify storage dtcraft:call_stack call.arg1 set from storage dtcraft:call_stack this.arg1
execute if data storage dtcraft:call_stack this.users[0] run function dtcraft:user_utils/get_loop
execute if data storage dtcraft:call_stack this.users[0] run data modify storage dtcraft:call_stack this.user set from storage dtcraft:call_stack this.call.result
execute unless data storage dtcraft:call_stack this.user.UUID run data modify storage dtcraft:call_stack call.arg0 set from storage dtcraft:call_stack this.uuid
execute unless data storage dtcraft:call_stack this.user.UUID run function dtcraft:user_utils/create_by_uuid
execute unless data storage dtcraft:call_stack this.user.UUID run data modify storage dtcraft:call_stack this.user set from storage dtcraft:call_stack this.call.result
data modify storage dtcraft:call_stack this.result set from storage dtcraft:call_stack this.user

function dtcraft:call_stack/pop