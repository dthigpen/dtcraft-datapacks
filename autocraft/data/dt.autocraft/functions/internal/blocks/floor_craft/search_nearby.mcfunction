execute if entity @e[type=item,sort=nearest,distance=0.001..0.6,limit=1,nbt={Item:{id:"minecraft:dropper"}}] run data merge entity @s {Item:{tag:{craft:'minecraft:dropper'}}}
execute if entity @e[type=item,sort=nearest,distance=0.001..0.6,limit=1,nbt={Item:{id:"minecraft:carrot"}}] run data merge entity @s {Item:{tag:{craft:'minecraft:carrot'}}}

execute if data entity @s Item.tag.craft run kill @e[type=item,sort=nearest,distance=0.001..0.6,limit=1]
execute if data entity @s Item.tag.craft run data modify entity @s Item.tag.display.Name set from entity @s Item.tag.craft