say index_of
function dtcraft:call_stack/push
data modify storage dtcraft:call_stack this.items set from storage dtcraft:call_stack this.arg0
data modify storage dtcraft:call_stack this.key set from storage dtcraft:call_stack this.arg1

data modify storage dtcraft:call_stack this.index set value -1
# function dtcraft:call_stack/debug/print_args

data modify storage dtcraft:call_stack call.arg0 set from storage dtcraft:call_stack this.items
data modify storage dtcraft:call_stack call.arg1 set from storage dtcraft:call_stack this.key
data modify storage dtcraft:call_stack call.arg2 set from storage dtcraft:call_stack this.index
data modify storage dtcraft:call_stack this.result.value set from storage dtcraft:call_stack this.index

execute if data storage dtcraft:call_stack this.items[0] run function dtcraft:call_stack/index_of_loop
execute if data storage dtcraft:call_stack this.items[0] run data modify storage dtcraft:call_stack this.result.value set from storage dtcraft:call_stack this.calls[0].value
function dtcraft:call_stack/pop
