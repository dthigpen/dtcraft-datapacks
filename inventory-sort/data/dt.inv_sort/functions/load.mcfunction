# say load inventory-sort
function version:api/setup {args: { \
    id: "$dt.inv_sort", \
    version: [2,0,0], \
    dependencies: [ \
        {id: "$call_stack", version: [1,0,0]}, \
        {id: "$dt.raycast", version: [0,0,0]}, \
        {id: "$dt.array", version: [0,2,0]}, \
        {id: "$dt.inventory", version: [2,0,0]}, \
    ] \
}}
scoreboard objectives add dt.inv_sort dummy
scoreboard objectives add dt.tmp dummy
scoreboard objectives add dt.sort trigger
scoreboard players enable @a dt.sort
scoreboard objectives add dt.sort_chest trigger
scoreboard players enable @a dt.sort_chest

data merge storage dt.inv_sort: {}

function dt.inv_sort:internal/load_storage

execute store result score $max dt.tmp run gamerule maxCommandChainLength
execute if score $max dt.tmp matches ..499999 run gamerule maxCommandChainLength 500000
execute if score $max dt.tmp matches ..499999 run tellraw @p ["Increased maxCommandChainLength from ",{"score":{"name":"$max","objective":"dt.tmp"}}, " to 500000"]