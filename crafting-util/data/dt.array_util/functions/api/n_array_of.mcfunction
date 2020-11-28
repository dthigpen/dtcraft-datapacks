function call_stack:push

execute store result score size1 dt.tmp run data get storage call_stack: this.arg0
data modify storage call_stack: this.value set from storage call_stack: this.arg1

execute store result storage call_stack: this.length int 1 run scoreboard players get size1 dt.tmp

data modify storage call_stack: this.result set value []
execute unless data storage call_stack: {this:{length:0}} store result storage call_stack: call.arg0 int 1 run scoreboard players get size1 dt.tmp
execute unless data storage call_stack: {this:{length:0}} run data modify storage call_stack: call.arg1 set from storage call_stack: this.value
execute unless data storage call_stack: {this:{length:0}} run data modify storage call_stack: call.arg2 set value []
execute unless data storage call_stack: {this:{length:0}} run function dt.array_util:internal/n_array_of_loop
execute unless data storage call_stack: {this:{length:0}} run data modify storage call_stack: this.result set from storage call_stack: call.result

function call_stack:pop