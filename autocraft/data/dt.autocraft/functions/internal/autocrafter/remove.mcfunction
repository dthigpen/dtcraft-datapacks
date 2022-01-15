execute if entity @s[tag=dt.ac.block_entity] run function rx.playerdb:admin/delete_player
execute if entity @s[tag=dt.ac.block_entity] run kill @e[type=item,nbt={Item:{id:"minecraft:barrel"}},distance=..0.5,limit=1]
# if there was a result_placeheholder kill it when it drops
kill @e[distance=..1,type=item,nbt={Item:{tag:{dt:{type:"result_placeholder"}}}},sort=nearest]
execute if entity @s[tag=dt.ac.block_entity] run function dt.custom_block:api/block/destroy