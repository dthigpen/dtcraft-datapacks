# say setblock
tag @s remove unset
scoreboard players reset $x_rotation dt.tmp
scoreboard players reset $y_rotation dt.tmp
execute as @a[tag=dt.cb.placed, sort=nearest, distance=..6,limit=1] store result score $x_rotation dt.tmp run data get entity @s Rotation[0]
execute as @a[tag=dt.cb.placed, sort=nearest, distance=..6,limit=1] store result score $y_rotation dt.tmp run data get entity @s Rotation[1]

# Invert from actual rotatio to face player
execute if score $y_rotation dt.tmp matches ..-45 run tag @s add facing.down
execute if score $y_rotation dt.tmp matches 45.. run tag @s add facing.up
execute if entity @s[tag=!facing.down,tag=!facing.up] if score $x_rotation dt.tmp matches -45..45 run tag @s add facing.north
execute if entity @s[tag=!facing.down,tag=!facing.up] if score $x_rotation dt.tmp matches 45..135 run tag @s add facing.east
execute if entity @s[tag=!facing.down,tag=!facing.up] if score $x_rotation dt.tmp matches 135..180 run tag @s add facing.south
execute if entity @s[tag=!facing.down,tag=!facing.up] if score $x_rotation dt.tmp matches -180..-135 run tag @s add facing.south
execute if entity @s[tag=!facing.down,tag=!facing.up] if score $x_rotation dt.tmp matches -135..-45 run tag @s add facing.west

execute if score $x_rotation dt.tmp matches -45..45 run data merge entity @s {ItemRotation:0b}
execute if score $x_rotation dt.tmp matches 45..135 run data merge entity @s {ItemRotation:2b}
execute if score $x_rotation dt.tmp matches 135..180 run data merge entity @s {ItemRotation:4b}
execute if score $x_rotation dt.tmp matches -180..-135 run data merge entity @s {ItemRotation:4b}
execute if score $x_rotation dt.tmp matches -135..-45 run data merge entity @s {ItemRotation:6b}

execute if data entity @s Item.tag.hold.block.tag run data modify entity @s Item.tag merge from entity @s Item.tag.hold.block.tag

# TODO figure out how to get facing flag working so single vertical model can be used
# execute if entity @s[tag=facing.down] run data modify entity @s Facing set value 0b
execute if entity @s[tag=facing.up] if data entity @s Item.tag.hold.block.overrides.up run data modify entity @s Item.tag.CustomModelData set from entity @s Item.tag.hold.block.overrides.up
execute if entity @s[tag=facing.down] if data entity @s Item.tag.hold.block.overrides.down run data modify entity @s Item.tag.CustomModelData set from entity @s Item.tag.hold.block.overrides.down

# Add item Tags
data modify entity @s Tags append from entity @s Item.tag.hold.block.Tags[]

# set default base block
setblock ~ ~ ~ spawner{SpawnCount:0,SpawnRange:0,RequiredPlayerRange:0,MaxNearbyEntities:0,SpawnData:{entity:{id:"minecraft:area_effect_cloud"}}}