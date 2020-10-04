# say index_of_loop
function dtcraft:call_stack/push
data modify storage dtcraft:call_stack this.items set from storage dtcraft:call_stack this.arg0
data modify storage dtcraft:call_stack this.key set from storage dtcraft:call_stack this.arg1
execute store result score int1 dt.tmp run data get storage dtcraft:call_stack this.arg2
scoreboard players add int1 dt.tmp 1
data modify storage dtcraft:call_stack this.var1 set from storage dtcraft:call_stack this.items[0].id

#region base case
execute store success storage dtcraft:call_stack this.not_equal int 1 run data modify storage dtcraft:call_stack this.var1 set from storage dtcraft:call_stack this.key.id
execute if data storage dtcraft:call_stack {this:{not_equal:0}} store result storage dtcraft:call_stack this.result int 1 run scoreboard players get int1 dt.tmp
#endregion

#region loop
execute if data storage dtcraft:call_stack {this:{not_equal:1}} run data remove storage dtcraft:call_stack this.items[0]
execute if data storage dtcraft:call_stack {this:{not_equal:1}} if data storage dtcraft:call_stack this.items[0] run data modify storage dtcraft:call_stack call.arg0 set from storage dtcraft:call_stack this.items
execute if data storage dtcraft:call_stack {this:{not_equal:1}} if data storage dtcraft:call_stack this.items[0] run data modify storage dtcraft:call_stack call.arg1 set from storage dtcraft:call_stack this.key
execute if data storage dtcraft:call_stack {this:{not_equal:1}} if data storage dtcraft:call_stack this.items[0] store result storage dtcraft:call_stack call.arg2 int 1 run scoreboard players get int1 dt.tmp
execute if data storage dtcraft:call_stack {this:{not_equal:1}} if data storage dtcraft:call_stack this.items[0] run function dtcraft:call_stack/index_of_loop
execute if data storage dtcraft:call_stack {this:{not_equal:1}} run data modify storage dtcraft:call_stack this.result set from storage dtcraft:call_stack call.result
#endregion

function dtcraft:call_stack/pop