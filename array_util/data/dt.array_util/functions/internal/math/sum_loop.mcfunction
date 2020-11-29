function call_stack:push

data modify storage call_stack: this.numbers set from storage call_stack: this.arg0
data modify storage call_stack: this.sum set from storage call_stack: this.arg1

execute store result score int1 dt.tmp run data get storage call_stack: this.sum
execute store result score int2 dt.tmp run data get storage call_stack: this.numbers[0]

scoreboard players operation int1 dt.tmp += int2 dt.tmp
execute store result storage call_stack: this.sum int 1 run scoreboard players get int1 dt.tmp
data remove storage call_stack: this.numbers[0]

execute unless data storage call_stack: this.numbers[0] run data modify storage call_stack: this.result set from storage call_stack: this.sum
execute if data storage call_stack: this.numbers[0] run data modify storage call_stack: call.arg0 set from storage call_stack: this.numbers
execute if data storage call_stack: this.numbers[0] run data modify storage call_stack: call.arg1 set from storage call_stack: this.sum
execute if data storage call_stack: this.numbers[0] run function dt.array_util:internal/math/sum_loop
execute if data storage call_stack: this.numbers[0] run data modify storage call_stack: this.result set from storage call_stack: call.result

function call_stack:pop