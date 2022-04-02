function call_stack:push

data modify storage call_stack: call.arg0 set value [[],[]]
# data modify storage call_stack: call.arg0[0] append value ''
data modify storage call_stack: call.arg0[0] append value 'function call_stack:push'
data modify storage call_stack: call.arg0[0] append value 'data modify storage call_stack: this.var set value "set in first tick"'
data modify storage call_stack: call.arg0[0] append value 'tellraw @p ["FIRST this.var: ",{"nbt":"this.var","storage":"call_stack:"}]'
data modify storage call_stack: call.arg0[0] append value 'data modify storage call_stack: this.return set from storage call_stack: this'
data modify storage call_stack: call.arg0[0] append value 'function call_stack:pop'
data modify storage call_stack: call.arg0[0] append value 'function dt.callback:internal/multi/copy_return_to_data'
# data modify storage call_stack: call.arg0[0] append value 'tellraw @p ["DATA data: ",{"nbt":"data","storage":"dt.callback:io"}]'


# data modify storage call_stack: call.arg0[1] append value 'tellraw @p ["DATA data: ",{"nbt":"data","storage":"dt.callback:io"}]'
data modify storage call_stack: call.arg0[1] append value 'function dt.callback:internal/multi/copy_data_to_call'
data modify storage call_stack: call.arg0[1] append value 'function call_stack:push'
data modify storage call_stack: call.arg0[1] append value 'tellraw @p ["SECOND this.var: ",{"nbt":"this.var","storage":"call_stack:"}]'
data modify storage call_stack: call.arg0[1] append value 'function call_stack:pop'
function dt.callback:api/multi_queue


function call_stack:pop