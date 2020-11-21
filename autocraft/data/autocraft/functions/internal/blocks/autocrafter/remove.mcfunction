execute if block ~ ~ ~ dropper run setblock ~ ~ ~ air replace
kill @e[type=item,nbt={Item:{id:"minecraft:dropper"}},distance=..1,sort=nearest,limit=1]
loot spawn ~ ~ ~ loot autocraft:autocrafter
kill @s