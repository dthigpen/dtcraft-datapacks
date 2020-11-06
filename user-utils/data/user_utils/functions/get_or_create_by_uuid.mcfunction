#say get
function call_stack:push


data modify storage call_stack: this.users set from storage call_stack: this.arg0
data modify storage call_stack: this.uuid set from storage call_stack: this.arg1

data modify storage call_stack: this.user set value {}
execute if data storage call_stack: this.users[0] run data modify storage call_stack: call.arg0 set from storage call_stack: this.arg0
execute if data storage call_stack: this.users[0] run data modify storage call_stack: call.arg1 set from storage call_stack: this.arg1
execute if data storage call_stack: this.users[0] run function user_utils:get_loop
execute if data storage call_stack: this.users[0] run data modify storage call_stack: this.user set from storage call_stack: call.result
execute unless data storage call_stack: this.user.UUID run data modify storage call_stack: call.arg0 set from storage call_stack: this.uuid
execute unless data storage call_stack: this.user.UUID run function user_utils:create_by_uuid
execute unless data storage call_stack: this.user.UUID run data modify storage call_stack: this.user set from storage call_stack: call.result
data modify storage call_stack: this.result set from storage call_stack: this.user

function call_stack:pop