# # if out of bounds or being initalized set it to ready
# execute unless score @s dt.ac.state matches 0.. run scoreboard players operation @s dt.ac.state = #ready dt.ac.state
execute unless data block ~ ~ ~ Items[{Slot:15b}] run scoreboard players operation @s dt.ac.state = #empty_result_slot dt.ac.state
execute if data block ~ ~ ~ Items[{Slot:15b}] run scoreboard players operation @s dt.ac.state = #non_empty_result_slot dt.ac.state
# # craft -> cooldown
# execute if score @s dt.ac.state = #craft dt.ac.state run scoreboard players operation @s dt.ac.cooldown = #max dt.ac.cooldown
# execute if score @s dt.ac.state = #craft dt.ac.state run scoreboard players operation @s dt.ac.state = #cooldown dt.ac.state

# # cooldown -> ready
# # allow instant cooldown if rate is >= current cooldown
# execute if score @s dt.ac.state = #cooldown dt.ac.state if score #rate dt.ac.cooldown >= @s dt.ac.cooldown run scoreboard players operation @s dt.ac.state = #ready dt.ac.state
# execute if score @s dt.ac.state = #cooldown dt.ac.state if score @s dt.ac.cooldown matches ..0 run scoreboard players operation @s dt.ac.state = #ready dt.ac.state


# # ready -> craft
# execute if score @s dt.ac.state = #ready dt.ac.state if block ~ ~-1 ~ minecraft:hopper[enabled=true] run scoreboard players operation @s dt.ac.state = #craft dt.ac.state
# execute if score @s dt.ac.state = #ready dt.ac.state positioned ~ ~-1 ~ unless block ~ ~ ~ minecraft:hopper if entity @e[predicate=dt.autocraft:hopper_minecraft,nbt={Enabled:true},limit=1,sort=nearest] run scoreboard players operation @s dt.ac.state = #craft dt.ac.state


