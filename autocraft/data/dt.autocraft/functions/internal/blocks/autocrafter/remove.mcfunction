execute if entity @s[tag=dt.ac.block_entity] run function rx.playerdb:admin/delete_player
execute if entity @s[tag=dt.ac.block_entity] run kill @e[type=item,nbt={Item:{id:"minecraft:dropper"}},distance=..0.5,limit=1]
execute if entity @s[tag=dt.ac.block_entity] run function dt.custom_block:api/block/destroy