#say get
function dtcraft:call_stack/push

data modify storage dtcraft:call_stack this.users set from storage dtcraft:call_stack this.arg0
data modify storage dtcraft:call_stack this.uuid set from storage dtcraft:call_stack this.arg1

execute if data storage dtcraft:call_stack this.users[0] run data modify storage dtcraft:call_stack call.arg0 set from storage dtcraft:call_stack this.users
execute if data storage dtcraft:call_stack this.users[0] run data modify storage dtcraft:call_stack call.arg1 set from storage dtcraft:call_stack this.uuid
execute if data storage dtcraft:call_stack this.users[0] run function dtcraft:user_utils/get_loop
execute if data storage dtcraft:call_stack this.users[0] run data modify storage dtcraft:call_stack this.result set from storage dtcraft:call_stack this.call.result

function dtcraft:call_stack/pop
