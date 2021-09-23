#say get_loop
function call_stack:push

data modify storage call_stack: this.users set from storage call_stack: this.arg0
data modify storage call_stack: this.uuid set from storage call_stack: this.arg1
data modify storage call_stack: this.returning_users set from storage call_stack: this.arg2

data modify storage call_stack: call.arg0 set from storage call_stack: this.users[0].UUID
data modify storage call_stack: call.arg1 set from storage call_stack: this.uuid
function dt.user_util:equal/equal_value
data modify storage call_stack: this.equal set from storage call_stack: call.return

execute if data storage call_stack: {this:{equal:false}} run data modify storage call_stack: this.returning_users append from storage call_stack: this.users[0]
data remove storage call_stack: this.users[0]

# base case
execute unless data storage call_stack: this.users[0] run data modify storage call_stack: this.return set from storage call_stack: this.returning_users

execute if data storage call_stack: this.users[0] run data modify storage call_stack: call.arg0 set from storage call_stack: this.users
execute if data storage call_stack: this.users[0] run data modify storage call_stack: call.arg1 set from storage call_stack: this.uuid
execute if data storage call_stack: this.users[0] run data modify storage call_stack: call.arg2 set from storage call_stack: this.returning_users
execute if data storage call_stack: this.users[0] run function dt.user_util:get_not_loop
execute if data storage call_stack: this.users[0] run data modify storage call_stack: this.return set from storage call_stack: call.return
#endregion
function call_stack:pop