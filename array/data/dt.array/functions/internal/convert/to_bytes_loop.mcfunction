function call_stack:push
data modify storage call_stack: this.values set from storage call_stack: this.arg0
data modify storage call_stack: this.bytes set from storage call_stack: this.arg1

execute if data storage call_stack: this.values[0] run data modify storage call_stack: this.bytes append value 0b
execute if data storage call_stack: this.values[0] store result storage call_stack: this.bytes[-1] byte 1 run data get storage call_stack: this.values[0]
execute if data storage call_stack: this.values[0] run data remove storage call_stack: this.values[0]

execute if data storage call_stack: this.values[0] run data modify storage call_stack: this.continue set value true
execute unless data storage call_stack: this.continue run data modify storage call_stack: this.return set from storage call_stack: this.bytes
execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg0 set from storage call_stack: this.values
execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg1 set from storage call_stack: this.bytes
execute if data storage call_stack: this.continue run function dt.array:internal/convert/to_bytes_loop
execute if data storage call_stack: this.continue run data modify storage call_stack: this.return set from storage call_stack: call.return
function call_stack:pop