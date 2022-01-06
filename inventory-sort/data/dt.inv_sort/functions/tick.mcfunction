execute as @a[scores={dt.sort=1..}] run function dt.inv_sort:sort
scoreboard players reset @a dt.sort
scoreboard players enable @a dt.sort

schedule function dt.inv_sort:tick 1t replace