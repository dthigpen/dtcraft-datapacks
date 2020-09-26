execute as @a[scores={dt.sort=1..}] run say Sorting inventory..

scoreboard players reset @a dt.sort
scoreboard players enable @a dt.sort