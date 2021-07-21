function call_stack:push
data modify storage call_stack: this.array set from storage call_stack: this.arg0

data modify storage call_stack: this.result set value [[],[]]

# case 1: empty array return [[],[]] (implicit)
# case 2: one element in array return [[],[n]]
# case 3: array with len >= 2

# case 2
execute if data storage call_stack: this.array[0] unless data storage call_stack: this.array[1] run data modify storage call_stack: this.result[1] set from storage call_stack: this.array

# case 3
execute if data storage call_stack: this.array[0] if data storage call_stack: this.array[1] run data modify storage call_stack: call.arg0 set from storage call_stack: this.array
execute if data storage call_stack: this.array[0] if data storage call_stack: this.array[1] run data modify storage call_stack: call.arg1 set value []
execute if data storage call_stack: this.array[0] if data storage call_stack: this.array[1] run function dt.array:internal/split_half_loop
execute if data storage call_stack: this.array[0] if data storage call_stack: this.array[1] run data modify storage call_stack: this.result set from storage call_stack: call.result


function call_stack:pop