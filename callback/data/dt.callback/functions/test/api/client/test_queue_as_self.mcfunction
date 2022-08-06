data modify storage call_stack: call.arg0 set value 'execute as @a[tag=dt_callback_executor] run tellraw @p ["test_queue3 UUID: ",{"nbt":"UUID","entity":"@s"}]'
function dt.callback:api/as_self/queue

