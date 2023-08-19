function version:api/setup {args: { \
    id: "$dt.array", \
    version: [0,2,0], \
    dependencies: [ \
        {id: "$call_stack", version: [1,0,0]}, \
    ] \
}}


scoreboard objectives add dt.tmp dummy
