#say get_loop
function dtcraft:call_stack/push

data modify storage dtcraft:call_stack this.users set from storage dtcraft:call_stack this.arg0
data modify storage dtcraft:call_stack this.uuid set from storage dtcraft:call_stack this.arg1
data modify storage dtcraft:call_stack this.resulting_users set from storage dtcraft:call_stack this.arg2

data modify storage dtcraft:call_stack call.arg0 set from storage dtcraft:call_stack this.users[0].UUID
data modify storage dtcraft:call_stack call.arg1 set from storage dtcraft:call_stack this.uuid
function dtcraft:user_utils/equal/equal_value
data modify storage dtcraft:call_stack this.equal set from storage dtcraft:call_stack call.result
data remove storage dtcraft:call_stack this.users[0]

# base case
execute unless data storage dtcraft:call_stack this.users[0] run data modify storage dtcraft:call_stack this.result set from storage dtcraft:call_stack this.resulting_users

execute if data storage dtcraft:call_stack {this:{equal:false}} run data modify storage dtcraft:call_stack this.resulting_users append from storage dtcraft:call_stack this.users[0]
execute if data storage dtcraft:call_stack {this:{equal:false}} run data remove storage dtcraft:call_stack this.users[0]
execute if data storage dtcraft:call_stack {this:{equal:false}} if data storage dtcraft:call_stack this.users[0] run data modify storage dtcraft:call_stack call.arg0 set from storage dtcraft:call_stack this.users
execute if data storage dtcraft:call_stack {this:{equal:false}} if data storage dtcraft:call_stack this.users[0] run data modify storage dtcraft:call_stack call.arg1 set from storage dtcraft:call_stack this.uuid
execute if data storage dtcraft:call_stack {this:{equal:false}} if data storage dtcraft:call_stack this.users[0] run data modify storage dtcraft:call_stack call.arg2 set from storage dtcraft:call_stack this.resulting_users
execute if data storage dtcraft:call_stack {this:{equal:false}} if data storage dtcraft:call_stack this.users[0] run function dtcraft:user_utils/get_not_loop
execute if data storage dtcraft:call_stack {this:{equal:false}} if data storage dtcraft:call_stack this.users[0] run data modify storage dtcraft:call_stack this.result set from storage dtcraft:call_stack call.result
#endregion
function dtcraft:call_stack/pop