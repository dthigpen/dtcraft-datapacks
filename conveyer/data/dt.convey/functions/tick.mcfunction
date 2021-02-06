schedule function dt.convey:tick 1t replace

# execute as @e[type=item] at @s if block ~ ~-1 ~ magenta_glazed_terracotta[facing=west] run tp ~0.1 ~ ~

execute as @e[type=item] at @s if block ~ ~-0.01 ~ magenta_glazed_terracotta run function dt.convey:internal/move_item
