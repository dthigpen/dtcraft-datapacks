execute as @a[scores={dt.sort=1..}] run function dt.inv_sort:internal/sort_player
scoreboard players reset @a dt.sort
scoreboard players enable @a dt.sort

execute as @a[scores={dt.sort_chest=1..}] run function dt.inv_sort:internal/do_raycast
scoreboard players reset @a dt.sort_chest
scoreboard players enable @a dt.sort_chest


schedule function dt.inv_sort:internal/tick 1t replace