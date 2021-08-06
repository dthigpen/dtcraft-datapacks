data modify storage test: data set value {}
execute unless entity @e[type=armor_stand, tag=dt.ac, limit=1, sort=nearest, distance=0..5] run data modify storage test: data set value "no data"
execute as @e[type=armor_stand, tag=dt.ac, limit=1, sort=nearest, distance=0..5] at @s run function rx.playerdb:api/get_self
data modify storage test: data set from storage rx:io playerdb.player.data.dtcraft.crafting

# tellraw @p ["get_data.mcfunction: ",{"nbt":"data","storage":"test:"}]