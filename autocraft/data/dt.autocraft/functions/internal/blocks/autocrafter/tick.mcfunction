data merge entity @s {Fire:10s}
execute unless block ~ ~ ~ minecraft:dropper run function dt.autocraft:internal/blocks/autocrafter/remove


execute unless score @s dt.ac.state matches 0.. run scoreboard players operation @s dt.ac.state = #ready dt.ac.state
execute if block ~ ~ ~ minecraft:dropper run function dt.autocraft:internal/blocks/autocrafter/set_state
execute if block ~ ~ ~ minecraft:dropper run function dt.autocraft:internal/blocks/autocrafter/handle_state