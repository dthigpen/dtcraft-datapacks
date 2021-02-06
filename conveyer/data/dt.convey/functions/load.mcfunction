tellraw @p {"text":"conveyer datapack loaded","color":"green"}
scoreboard players set $dt.convey.major load 0
scoreboard players set $dt.convey.minor load 1
scoreboard players set $dt.convey.patch load 0

scoreboard objectives add dt.convey dummy
scoreboard players set $speed dt.convey 4

schedule clear dt.convey:tick
schedule function dt.convey:tick 1t replace