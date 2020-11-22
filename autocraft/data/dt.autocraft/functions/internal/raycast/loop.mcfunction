scoreboard players add @s dt.ac.raycast 1
#particle happy_villager ~ ~ ~ 0 0 0 0.1 1
execute unless block ~ ~ ~ #dt.autocraft:ignore run scoreboard players set @s dt.ac.raycast 2222
execute as @s[scores={dt.ac.raycast=2222..}] positioned ^ ^ ^ run function dt.autocraft:internal/blocks/autocrafter/locate
#execute as @s[scores={dt.ac.raycast=2222..}] positioned ^ ^ ^ run particle flame ~ ~ ~ 0 0 0 0.1 20
execute as @s[scores={dt.ac.raycast=..1111}] positioned ^ ^ ^0.2 run function dt.autocraft:internal/raycast/loop