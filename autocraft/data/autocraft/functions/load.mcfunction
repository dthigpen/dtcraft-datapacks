say autocraft loaded!
                    
scoreboard players set $autocraft.major load 0
scoreboard players set $autocraft.minor load 1
scoreboard players set $autocraft.patch load 0
                    
schedule clear autocraft:tick
schedule function autocraft:tick 1t replace


scoreboard objectives add dt.ac.placed minecraft.used:minecraft.dropper
scoreboard objectives add dt.ac.curblock dummy
scoreboard objectives add dt.ac.offblock dummy

scoreboard objectives add dt.ac.cooldown dummy
scoreboard players set #max dt.ac.cooldown 20
scoreboard players set #rate dt.ac.cooldown 5

scoreboard objectives add dt.ac.state dummy
scoreboard players set #ready dt.ac.state 1
scoreboard players set #craft dt.ac.state 2
scoreboard players set #cooldown dt.ac.state 3

#execute as @e[tag=dt.ac] at @s run setblock ~ ~ ~ air

function autocraft:internal/raycast/load
