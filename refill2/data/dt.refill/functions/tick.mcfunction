# Built with mcpy (https://github.com/dthigpen/mcpy)

execute as @a[scores={dt.refill.toggle=1..},tag=dt.refill] run tag @s add mcpy_tag_0
execute as @a[scores={dt.refill.toggle=1..},tag=!dt.refill] run tag @s add mcpy_tag_1
execute as @a[tag=mcpy_tag_0] run tellraw @s {"text":"Refill disabled","color":"dark_red"}
execute as @a[tag=mcpy_tag_0] run tag @s remove dt.refill
execute as @a[tag=mcpy_tag_0] run tag @s remove mcpy_tag_0
execute as @a[tag=mcpy_tag_1] run tellraw @s {"text":"Refill enabled","color":"dark_green"}
execute as @a[tag=mcpy_tag_1] run tag @s add dt.refill
execute as @a[tag=mcpy_tag_1] run tag @s remove mcpy_tag_1
scoreboard players reset @a dt.refill.toggle
scoreboard players enable @a dt.refill.toggle
execute as @a[tag=dt.refill] run function dt.refill:internal/check_refills
schedule function dt.refill:tick 1t replace
