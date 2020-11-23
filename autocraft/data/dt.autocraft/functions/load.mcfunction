#say autocraft loaded!
                    
scoreboard players set $dt.autocraft.major load 0
scoreboard players set $dt.autocraft.minor load 1
scoreboard players set $dt.autocraft.patch load 0
                    
schedule clear dt.autocraft:tick
schedule function dt.autocraft:tick 1t replace


scoreboard objectives add dt.ac.placed minecraft.used:minecraft.dropper
scoreboard objectives add dt.ac.curblock dummy
scoreboard objectives add dt.ac.offblock dummy

scoreboard objectives add dt.ac.cooldown dummy
scoreboard players set #max dt.ac.cooldown 20
scoreboard players set #rate dt.ac.cooldown 20

scoreboard objectives add dt.ac.state dummy
scoreboard players set #ready dt.ac.state 1
scoreboard players set #craft dt.ac.state 2
scoreboard players set #cooldown dt.ac.state 3

scoreboard objectives add dt.tmp dummy

function dt.autocraft:internal/raycast/load
