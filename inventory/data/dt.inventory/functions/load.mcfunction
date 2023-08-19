function version:api/setup {args: { \
    id: "$dt.inventory", \
    version: [2,0,0], \
    dependencies: [ \
        {id: "$call_stack", version: [1,0,0]}, \
        {id: "$dt.array", version: [0,2,0]}, \
    ] \
}}

scoreboard objectives add dt.enum dummy
scoreboard players set #equal dt.enum 0
scoreboard players set #not_equal dt.enum 1
scoreboard players set #found dt.enum 0
scoreboard players set #not_found dt.enum 1

function dt.inventory:load_shulker
execute in overworld unless entity @e[type=armor_stand,tag=dt_inventory] run summon minecraft:armor_stand 2999999.5 256 2999999.5 {Invulnerable:1b,NoGravity:1b,Invisible:0b,Tags:["dt_inventory"]}

execute store result score $max dt.tmp run gamerule maxCommandChainLength
execute if score $max dt.tmp matches ..499999 run gamerule maxCommandChainLength 500000
execute if score $max dt.tmp matches ..499999 run tellraw @p ["Increased maxCommandChainLength from ",{"score":{"name":"$max","objective":"dt.tmp"}}, " to 500000"]