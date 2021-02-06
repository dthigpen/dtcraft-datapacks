

execute if block ~ ~-0.01 ~ magenta_glazed_terracotta[facing=west] store result entity @s Motion[0] double 0.01 run scoreboard players get $speed dt.convey
execute if block ~ ~-0.01 ~ magenta_glazed_terracotta[facing=west] run data modify entity @s Rotation[0] set value -90.0f
execute if block ~ ~-0.01 ~ magenta_glazed_terracotta[facing=north] store result entity @s Motion[2] double 0.01 run scoreboard players get $speed dt.convey
execute if block ~ ~-0.01 ~ magenta_glazed_terracotta[facing=north] run data modify entity @s Rotation[0] set value 0.0f
execute if block ~ ~-0.01 ~ magenta_glazed_terracotta[facing=east] store result entity @s Motion[0] double -0.01 run scoreboard players get $speed dt.convey
execute if block ~ ~-0.01 ~ magenta_glazed_terracotta[facing=east] run data modify entity @s Rotation[0] set value 90.0f
execute if block ~ ~-0.01 ~ magenta_glazed_terracotta[facing=south] store result entity @s Motion[2] double -0.01 run scoreboard players get $speed dt.convey
execute if block ~ ~-0.01 ~ magenta_glazed_terracotta[facing=south] run data modify entity @s Rotation[0] set value 180.0f