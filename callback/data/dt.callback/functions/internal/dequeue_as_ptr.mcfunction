execute if data storage call_stack: global.dt.callback.cmd_queue[0] run function dt.callback:internal/memory/ptr/as/setblock
execute if data storage call_stack: global.dt.callback.cmd_queue[0] run data modify block ~ ~ ~ Command set from storage call_stack: global.dt.callback.cmd_queue[0]
execute if data storage call_stack: global.dt.callback.cmd_queue[0] run function dt.callback:internal/memory/ptr/as/move_to_next
execute if data storage call_stack: global.dt.callback.cmd_queue[0] run data remove storage call_stack: global.dt.callback.cmd_queue[0]
execute unless data storage call_stack: global.dt.callback.cmd_queue[0] at @s run setblock ~ ~ ~ air
execute if data storage call_stack: global.dt.callback.cmd_queue[0] at @s run function dt.callback:internal/dequeue_as_ptr