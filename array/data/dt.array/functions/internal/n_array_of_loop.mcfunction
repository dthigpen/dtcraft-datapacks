function call_stack:push

execute store result score size1 dt.tmp run data get storage call_stack: this.arg0
data modify storage call_stack: this.value set from storage call_stack: this.arg1
data modify storage call_stack: this.array set from storage call_stack: this.arg2

data modify storage call_stack: this.array append from storage call_stack: this.value
scoreboard players remove size1 dt.tmp 1

execute store result storage call_stack: this.length int 1 run scoreboard players get size1 dt.tmp
execute if data storage call_stack: {this:{length:0}} run data modify storage call_stack: this.return set from storage call_stack: this.array
execute unless data storage call_stack: {this:{length:0}} run data modify storage call_stack: call.arg0 set from storage call_stack: this.length
execute unless data storage call_stack: {this:{length:0}} run data modify storage call_stack: call.arg1 set from storage call_stack: this.value
execute unless data storage call_stack: {this:{length:0}} run data modify storage call_stack: call.arg2 set from storage call_stack: this.array
execute unless data storage call_stack: {this:{length:0}} run function dt.array:internal/n_array_of_loop
execute unless data storage call_stack: {this:{length:0}} run data modify storage call_stack: this.return set from storage call_stack: call.return

function call_stack:pop