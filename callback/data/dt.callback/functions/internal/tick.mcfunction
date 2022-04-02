# say tick callback
schedule function dt.callback:internal/tick 1t replace

execute if data storage call_stack: global.dt.callback.cmd_queue[0] run function dt.callback:internal/dequeue


scoreboard players add #counter dt.callback 1
scoreboard players set #30 dt.callback 30
scoreboard players operation #counter dt.callback %= #30 dt.callback