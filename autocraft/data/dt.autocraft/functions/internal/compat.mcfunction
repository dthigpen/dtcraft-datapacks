# Handle changed tag names
execute as @e[tag=dt.ac] run tag @s add dt.ac.block_entity
execute as @e[tag=dt.ac,tag=dt.ac.block_entity] run tag @s remove dt.ac