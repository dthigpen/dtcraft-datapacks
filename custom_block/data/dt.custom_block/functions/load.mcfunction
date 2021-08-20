# say load custom_block

scoreboard players set $dt.custom_block.version.major load.status 0
scoreboard players set $dt.custom_block.version.minor load.status 1
scoreboard players set $dt.custom_block.version.patch load.status 0


scoreboard objectives add dt.cb.placed minecraft.used:minecraft.dropper
scoreboard objectives add dt.cb.curblock dummy

scoreboard objectives add dt.cb.facing dummy
scoreboard players set #north dt.cb.facing 1
scoreboard players set #east dt.cb.facing 2
scoreboard players set #south dt.cb.facing 3
scoreboard players set #west dt.cb.facing 4
scoreboard players set #up dt.cb.facing 5
scoreboard players set #down dt.cb.facing 6

schedule clear dt.custom_block:tick
schedule function dt.custom_block:tick 1t replace