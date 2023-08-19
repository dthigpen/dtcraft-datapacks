function version:api/setup {args: { \
    id: "$dt.array", \
    version: [0,1,0], \
    dependencies: [ \
        {id: "$call_stack", version: [1,0]}, \
    ] \
}}

scoreboard objectives add dt.callback dummy
execute unless data storage call_stack: global.dt.callback run data modify storage call_stack: global.dt.callback set value {cmd_queue:[],data_queue:[]}

execute store result score $max dt.tmp run gamerule maxCommandChainLength
execute if score $max dt.tmp matches ..99999 run gamerule maxCommandChainLength 100000
execute if score $max dt.tmp matches ..99999 run tellraw @p ["Increased maxCommandChainLength from ",{"score":{"name":"$max","objective":"dt.tmp"}}, " to 100000"]

function dt.callback:internal/memory/init