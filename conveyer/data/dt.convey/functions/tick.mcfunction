schedule function dt.convey:tick 1t replace

execute as @e[type=item] at @s if block ~ ~-0.01 ~ magenta_glazed_terracotta run function dt.convey:internal/move_item
execute as @e[type=item] at @s unless block ~ ~-0.01 ~ magenta_glazed_terracotta positioned ^ ^ ^-0.126 if block ~ ~-0.01 ~ magenta_glazed_terracotta run function dt.convey:internal/move_item
