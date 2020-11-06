# say index_of
function call_stack:push
data modify storage call_stack: this.items set from storage call_stack: this.arg0
data modify storage call_stack: this.key set from storage call_stack: this.arg1

data modify storage call_stack: this.index set value -1
# function call_stack:debug/print_args

data modify storage call_stack: call.arg0 set from storage call_stack: this.items
data modify storage call_stack: call.arg1 set from storage call_stack: this.key
data modify storage call_stack: call.arg2 set from storage call_stack: this.index
data modify storage call_stack: this.result set from storage call_stack: this.index

execute if data storage call_stack: this.items[0] run function call_stack:index_of_loop
execute if data storage call_stack: this.items[0] run data modify storage call_stack: this.result set from storage call_stack: call.result
function call_stack:pop
