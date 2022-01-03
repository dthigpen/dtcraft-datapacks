data modify storage test: data set value {}
execute unless entity @e[type=glow_item_frame, tag=dt.ac.block_entity, limit=1, sort=nearest, distance=0..5] run data modify storage test: data set value "no data"
execute as @e[type=glow_item_frame, tag=dt.ac.block_entity, limit=1, sort=nearest, distance=0..5] at @s run function #rx.playerdb:api/v2/get/self
data modify storage test: data set from storage rx:io playerdb.player.data.dtcraft.crafting

# tellraw @p ["get_data.mcfunction: ",{"nbt":"data","storage":"test:"}]