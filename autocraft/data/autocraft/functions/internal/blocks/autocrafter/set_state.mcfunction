
# cooldown -> ready
execute if score @s dt.ac.state = #cooldown dt.ac.state if score @s dt.ac.cooldown matches ..0 run scoreboard players operation @s dt.ac.state = #ready dt.ac.state

# craft -> cooldown
execute if score @s dt.ac.state = #craft dt.ac.state run scoreboard players operation @s dt.ac.cooldown = #max dt.ac.cooldown
execute if score @s dt.ac.state = #craft dt.ac.state run scoreboard players operation @s dt.ac.state = #cooldown dt.ac.state


# ready -> craft
execute if score @s dt.ac.state = #ready dt.ac.state if block ~ ~-1 ~ minecraft:hopper[enabled=true] run scoreboard players operation @s dt.ac.state = #craft dt.ac.state

