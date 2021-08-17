
# run the mulittick function if the last result was a pass
data remove storage unittest:internal temp.result

execute unless data entity @s data.results[-1] run data merge storage unittest:internal {temp:{result:{pass:true}}}
execute if data entity @s data.results[-1] run data modify storage unittest:internal temp.result set from entity @s data.results[-1]
# execute if data storage unittest:internal {temp:{result:{pass:true}}} run say HI
execute if data storage unittest:internal {temp:{result:{pass:true}}} run function #unittest:multi_tick
# tellraw @p ["tick.mcfunction: ",{"nbt":"temp","storage":"unittest:internal"}]
# increment tick
scoreboard players set $tick dt.tmp 0
execute store result score $tick dt.tmp run data get entity @s data.tick
scoreboard players add $tick dt.tmp 1
execute store result entity @s data.tick int 1 run scoreboard players get $tick dt.tmp
# tellraw @p ["tick.mcfunction: ",{"score":{"name":"$tick","objective":"dt.tmp"}}]