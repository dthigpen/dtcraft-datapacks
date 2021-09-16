function call_stack:push
data modify storage call_stack: this.values set from storage call_stack: this.arg0
data modify storage call_stack: this.ints set from storage call_stack: this.arg1

execute if data storage call_stack: this.values[0] run data modify storage call_stack: this.ints append value 0
execute if data storage call_stack: this.values[0] store result storage call_stack: this.ints[-1] int 1 run data get storage call_stack: this.values[0]
execute if data storage call_stack: this.values[0] run data remove storage call_stack: this.values[0]

execute if data storage call_stack: this.values[0] run data modify storage call_stack: this.continue set value true
execute unless data storage call_stack: this.continue run data modify storage call_stack: this.result set from storage call_stack: this.ints
execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg0 set from storage call_stack: this.values
execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg1 set from storage call_stack: this.ints
execute if data storage call_stack: this.continue run function dt.array:internal/convert/to_ints_loop
execute if data storage call_stack: this.continue run data modify storage call_stack: this.result set from storage call_stack: call.result
function call_stack:pop