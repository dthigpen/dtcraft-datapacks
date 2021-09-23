function call_stack:push
data modify storage call_stack: this.array set from storage call_stack: this.arg0
data modify storage call_stack: this.value set from storage call_stack: this.arg1
data modify storage call_stack: this.index set from storage call_stack: this.arg2

# base-case: input is empty, return -1
# case 1: input is not empty
# case 1a: input[0] == value, return index
# case 1b: input[0] != value, recurse

# base-case
execute unless data storage call_stack: this.array[0] run data modify storage call_stack: this.return set value -1

# case 1 
execute if data storage call_stack: this.array[0] store success storage call_stack: this.unequal byte 1 run data modify storage call_stack: this.array[0] set from storage call_stack: this.value

# case 1a
execute if data storage call_stack: {this:{unequal:false}} run data modify storage call_stack: this.return set from storage call_stack: this.index

# case 1b
execute if data storage call_stack: {this:{unequal:true}} store result score $index dt.tmp run data get storage call_stack: this.index
execute if data storage call_stack: {this:{unequal:true}} run scoreboard players add $index dt.tmp 1
execute if data storage call_stack: {this:{unequal:true}} run data remove storage call_stack: this.array[0]
execute if data storage call_stack: {this:{unequal:true}} run data modify storage call_stack: call.arg0 set from storage call_stack: this.array
execute if data storage call_stack: {this:{unequal:true}} run data modify storage call_stack: call.arg1 set from storage call_stack: this.value
execute if data storage call_stack: {this:{unequal:true}} store result storage call_stack: call.arg2 int 1 run scoreboard players get $index dt.tmp
execute if data storage call_stack: {this:{unequal:true}} run function dt.array:internal/index_of_loop
execute if data storage call_stack: {this:{unequal:true}} run data modify storage call_stack: this.return set from storage call_stack: call.return

function call_stack:pop