function version:api/setup {args: { \
    id: "$dt.autocraft", \
    version: [0,2,0], \
    dependencies: [ \
        {id: "$call_stack", version: [1,0,0]}, \
        {id: "$dt.custom_block", version: [0,1,0]}, \
        {id: "$dt.array", version: [0,2,0]}, \
        {id: "$dt.inventory", version: [2,0,0]}, \
        {id: "$dt.crafting", version: [1,0,0]}, \
    ] \
}}

# TODO Remove when old state logic is removed
scoreboard objectives add dt.ac.cooldown dummy
scoreboard players set #max dt.ac.cooldown 20
scoreboard players set #rate dt.ac.cooldown 20

scoreboard objectives add dt.ac.state dummy
scoreboard players set #ready dt.ac.state 1
scoreboard players set #craft dt.ac.state 2
scoreboard players set #cooldown dt.ac.state 3
scoreboard players set #empty_result_slot dt.ac.state 4
scoreboard players set #non_empty_result_slot dt.ac.state 5

scoreboard objectives add dt.tmp dummy

# Keep backward compatibility for existing worlds
function dt.autocraft:internal/compat
recipe take @a dt.autocraft:autocrafter

execute store result score $max dt.tmp run gamerule maxCommandChainLength
execute if score $max dt.tmp matches ..4999999 run gamerule maxCommandChainLength 5000000
execute if score $max dt.tmp matches ..4999999 run tellraw @p ["Increased maxCommandChainLength from ",{"score":{"name":"$max","objective":"dt.tmp"}}, " to 5000000"]