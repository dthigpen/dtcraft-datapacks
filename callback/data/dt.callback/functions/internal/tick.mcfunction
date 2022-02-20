# say tick callback
schedule function dt.callback:internal/tick 1t replace

execute if data storage call_stack: global.dt.callback.cmd_queue[0] run function dt.callback:internal/dequeue