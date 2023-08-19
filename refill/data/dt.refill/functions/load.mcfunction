function version:api/setup {args: { \
    id: "$dt.refill", \
    version: [2,0,0], \
    dependencies: [ \
        {id: "$call_stack", version: [1,0,0]}, \
        {id: "$dt.array", version: [0,2,0]}, \
        {id: "$dt.inventory", version: [2,0,0]}, \
    ] \
}}

scoreboard objectives add dt.tmp dummy
scoreboard objectives add dt.refill.toggle trigger
