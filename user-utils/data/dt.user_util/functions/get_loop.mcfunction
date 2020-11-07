#say get_loop
function call_stack:push

data modify storage call_stack: this.users set from storage call_stack: this.arg0
data modify storage call_stack: this.uuid set from storage call_stack: this.arg1

data modify storage call_stack: call.arg0 set from storage call_stack: this.users[0].UUID
data modify storage call_stack: call.arg1 set from storage call_stack: this.uuid
function dt.user_util:equal/equal_value
data modify storage call_stack: this.equal set from storage call_stack: call.result

# If not equal pop array and run again
execute if data storage call_stack: {this:{equal:true}} run data modify storage call_stack: this.result set from storage call_stack: this.users[0]
execute if data storage call_stack: {this:{equal:true}} run data remove storage call_stack: this.users[0]

#region not_equal
execute if data storage call_stack: {this:{equal:false}} run data remove storage call_stack: this.users[0]
execute if data storage call_stack: {this:{equal:false}} if data storage call_stack: this.users[0] run data modify storage call_stack: call.arg0 set from storage call_stack: this.users
execute if data storage call_stack: {this:{equal:false}} if data storage call_stack: this.users[0] run data modify storage call_stack: call.arg1 set from storage call_stack: this.uuid
execute if data storage call_stack: {this:{equal:false}} if data storage call_stack: this.users[0] run function dt.user_util:get_loop
execute if data storage call_stack: {this:{equal:false}} if data storage call_stack: this.users[0] run data modify storage call_stack: this.result set from storage call_stack: call.result
#endregion
function call_stack:pop