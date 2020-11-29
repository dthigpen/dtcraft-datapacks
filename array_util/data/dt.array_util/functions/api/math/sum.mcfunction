function call_stack:push

data modify storage call_stack: this.numbers set from storage call_stack: this.arg0

data modify storage call_stack: this.result set value 0
execute if data storage call_stack: this.numbers[0] run data modify storage call_stack: call.arg0 set from storage call_stack: this.numbers
execute if data storage call_stack: this.numbers[0] run data modify storage call_stack: call.arg1 set value 0
execute if data storage call_stack: this.numbers[0] run function dt.array_util:internal/math/sum_loop
execute if data storage call_stack: this.numbers[0] run data modify storage call_stack: this.result set from storage call_stack: call.result

function call_stack:pop