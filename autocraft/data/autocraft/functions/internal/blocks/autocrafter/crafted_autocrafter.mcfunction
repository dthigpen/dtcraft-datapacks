advancement revoke @s only autocraft:autocrafter

execute store result score @s dt.tmp run clear @s minecraft:knowledge_book

recipe take @s autocraft:autocrafter

loot give @s loot autocraft:autocrafter
execute as @e[type=item,sort=nearest,limit=1,nbt={Item:{tag:{dt_autocrafter:1b}}}] store result entity @s Item.Count byte 1 run scoreboard players get @s dt.tmp