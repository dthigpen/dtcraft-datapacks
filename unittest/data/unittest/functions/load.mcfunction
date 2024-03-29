function version:api/setup {args: { \
    id: "$unittest", \
    version: [1,0,0], \
}}


tellraw @a "Loaded unittest"

scoreboard players set $unittest.version.major load.status 0
scoreboard players set $unittest.version.minor load.status 0
scoreboard players set $unittest.version.patch load.status 0

scoreboard objectives add dt.tmp dummy
scoreboard players reset * dt.tmp
scoreboard objectives add dt.enum dummy
scoreboard players set #equal dt.enum 0
scoreboard players set #not_equal dt.enum 1

scoreboard objectives add unittest dummy
scoreboard players reset * unittest
scoreboard players set #status.fail unittest 0
scoreboard players set #status.pass unittest 1
scoreboard players set #status.running unittest 2
scoreboard players set #status.running_multi unittest 3

function unittest:internal/reset_all_data

kill @e[type=marker, tag=unittest]
schedule clear unittest:tick
schedule function unittest:tick 1t replace