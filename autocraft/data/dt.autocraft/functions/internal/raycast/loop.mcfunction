scoreboard players add @s dt.ac.raycast 1
execute unless block ~ ~ ~ #dt.autocraft:ignore run scoreboard players set @s dt.ac.raycast 2222
execute as @s[scores={dt.ac.raycast=2222..}] positioned ^ ^ ^ run function dt.autocraft:internal/custom_block_placement/locate_nearby_custom_blocks
execute as @s[scores={dt.ac.raycast=..1111}] positioned ^ ^ ^0.2 run function dt.autocraft:internal/raycast/loop