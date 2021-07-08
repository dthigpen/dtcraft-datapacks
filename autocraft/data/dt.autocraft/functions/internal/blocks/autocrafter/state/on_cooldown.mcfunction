# decrement cooldown
# reset if use before cooldown period
#say cooling down..
execute positioned ~ ~-1 ~ if block ~ ~ ~ hopper run scoreboard players operation @s dt.ac.cooldown -= #rate dt.ac.cooldown
execute positioned ~ ~-1 ~ unless block ~ ~ ~ hopper if entity @e[predicate=dt.autocraft:hopper_minecraft,limit=1,sort=nearest] run scoreboard players operation @s dt.ac.cooldown -= #rate dt.ac.cooldown