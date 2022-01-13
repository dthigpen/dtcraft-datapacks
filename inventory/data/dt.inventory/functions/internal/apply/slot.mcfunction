#> dt.inventory:internal/apply/slot
# Apply values to the Slot field of the given objects and return the result
# @params
#   storage call_stack: call.arg0
#       array[NBT] objects
#   storage call_stack: call.arg1
#       array[any] values
# @output
#   storage call_stack: call.return
#       array[NBT] objects
function call_stack:push
data modify storage call_stack: this.objects set from storage call_stack: this.arg0
data modify storage call_stack: this.values set from storage call_stack: this.arg1
data modify storage call_stack: this.mutated set value []
data modify storage call_stack: this.mutated set from storage call_stack: this.arg2
data modify storage call_stack: this.objects[0].Slot set from storage call_stack: this.values[0]
data modify storage call_stack: this.mutated append from storage call_stack: this.objects[0]
data remove storage call_stack: this.objects[0]
data remove storage call_stack: this.values[0]
execute if data storage call_stack: this.objects[0] run data modify storage call_stack: this.continue set value true
execute unless data storage call_stack: this.continue run data modify storage call_stack: this.return set from storage call_stack: this.mutated
execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg0 set from storage call_stack: this.objects
execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg1 set from storage call_stack: this.values
execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg2 set from storage call_stack: this.mutated
execute if data storage call_stack: this.continue run function dt.inventory:internal/apply/slot
execute if data storage call_stack: this.continue run data modify storage call_stack: this.return set from storage call_stack: call.return
function call_stack:pop