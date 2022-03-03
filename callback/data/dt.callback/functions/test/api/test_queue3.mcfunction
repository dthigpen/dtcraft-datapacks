function call_stack:push
data modify storage call_stack: call.arg0 set value 'tellraw @p ["test_queue3 UUID: ",{"nbt":"UUID","entity":"@s"}]'
function dt.callback:api/as_self/queue
function dt.callback:api/queue
function call_stack:pop

