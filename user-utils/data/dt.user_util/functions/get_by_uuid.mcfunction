#say get
function call_stack:push

data modify storage call_stack: this.users set from storage call_stack: this.arg0
data modify storage call_stack: this.uuid set from storage call_stack: this.arg1

execute if data storage call_stack: this.users[0] run data modify storage call_stack: call.arg0 set from storage call_stack: this.users
execute if data storage call_stack: this.users[0] run data modify storage call_stack: call.arg1 set from storage call_stack: this.uuid
execute if data storage call_stack: this.users[0] run function dt.user_util:get_loop
execute if data storage call_stack: this.users[0] run data modify storage call_stack: this.return set from storage call_stack: call.return

function call_stack:pop
