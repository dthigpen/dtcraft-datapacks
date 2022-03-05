function call_stack:push
data modify storage call_stack: call.arg0 set value []
data modify storage call_stack: call.arg0 append value "say hello"
data modify storage call_stack: call.arg0 append value 'tellraw @p ["test_queue2 data: ",{"nbt":"data","storage":"dt.callback:io"}]'
data modify storage call_stack: call.arg0 append value 'tellraw @p ["test_queue2 (again) data: ",{"nbt":"data","storage":"dt.callback:io"}]'
data modify storage call_stack: call.arg0 append value "say goodbye!"
data modify storage call_stack: call.arg1 set value {"foo":"bar"}
function dt.callback:api/queue
data modify storage call_stack: call.arg0 set value ['tellraw @p ["test_queue2 data: ",{"nbt":"data","storage":"dt.callback:io"}]']
data modify storage call_stack: call.arg1 set value {"foo":"fizz"}
function dt.callback:api/queue
data modify storage call_stack: call.arg0 set value ['tellraw @p ["test_queue2 data: ",{"nbt":"data","storage":"dt.callback:io"}]']
function dt.callback:api/queue
function call_stack:pop

