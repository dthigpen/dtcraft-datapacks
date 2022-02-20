function call_stack:push
data modify storage call_stack: call.arg0 set value 'tellraw @p ["test_queue2 data: ",{"nbt":"data","storage":"dt.callback:io"}]'
data modify storage call_stack: call.arg1 set value {"foo":"bar"}
function dt.callback:api/queue
data modify storage call_stack: call.arg0 set value 'tellraw @p ["test_queue2 data: ",{"nbt":"data","storage":"dt.callback:io"}]'
data modify storage call_stack: call.arg1 set value {"foo":"fizz"}
function dt.callback:api/queue
data modify storage call_stack: call.arg0 set value 'tellraw @p ["test_queue2 data: ",{"nbt":"data","storage":"dt.callback:io"}]'
data modify storage call_stack: call.arg1 set value {"foo":"buzz"}
function dt.callback:api/queue
function call_stack:pop

