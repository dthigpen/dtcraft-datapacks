schedule function dt.callback:tick 1t replace


#execute as @e[tag=callback_loc] at @s run say I'm a callback!
execute as @e[type=armor_stand,tag=callback_loc,tag=finished] at @s run setblock ~ ~ ~ air replace
#execute as @e[type=armor_stand,tag=callback_loc,tag=finished] at @s run function rx.playerdb:api/
execute as @e[type=armor_stand,tag=callback_loc,tag=finished] at @s run kill @s
execute as @e[type=armor_stand,tag=callback_loc,tag=!finished] at @s run tag @s add finished