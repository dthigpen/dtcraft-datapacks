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


function unittest:internal/reset_all_data

kill @e[type=marker, tag=unittest]
schedule clear unittest:tick
schedule function unittest:tick 1t replace