execute as @a[scores={dt.sort=1..}] run function dt.inv_sort:internal/sort
scoreboard players reset @a dt.sort
scoreboard players enable @a dt.sort

schedule function dt.inv_sort:internal/tick 1t replace