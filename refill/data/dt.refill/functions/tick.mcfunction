#say main
execute as @a[scores={dt.refill.toggle=1..},tag=dt.refill] run tag @s add dt.tmp.remove
execute as @a[scores={dt.refill.toggle=1..},tag=!dt.refill] run tag @s add dt.tmp.add
execute as @a[tag=dt.tmp.remove] run tellraw @s {"text":"Refill disabled","color":"dark_red"}
execute as @a[tag=dt.tmp.remove] run tag @s remove dt.refill
execute as @a[tag=dt.tmp.remove] run tag @s remove dt.tmp.remove

execute as @a[tag=dt.tmp.add] run tellraw @s {"text":"Refill enabled","color":"dark_green"}
execute as @a[tag=dt.tmp.add] run tag @s add dt.refill
execute as @a[tag=dt.tmp.add] run tag @s remove dt.tmp.add

scoreboard players reset @a dt.refill.toggle
scoreboard players enable @a dt.refill.toggle

execute as @a[tag=dt.refill] run function dt.refill:internal/check_refills
schedule function dt.refill:tick 1t replace