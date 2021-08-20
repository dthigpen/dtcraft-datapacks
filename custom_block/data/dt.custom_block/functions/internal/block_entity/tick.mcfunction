# Continually set fire for custom model to be visible
data merge entity @s {Fire:10s}

# If dropper is no longer there:
# remove its drop
# call the on_remove tag
# kill the block entity
execute unless block ~ ~ ~ minecraft:dropper run kill @e[type=item,nbt={Item:{id:"minecraft:dropper"}},distance=..1,sort=nearest,limit=1]
execute unless block ~ ~ ~ minecraft:dropper run function #dt.custom_block:on_remove
execute unless block ~ ~ ~ minecraft:dropper run kill @s