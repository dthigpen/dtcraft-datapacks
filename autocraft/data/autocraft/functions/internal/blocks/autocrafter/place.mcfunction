#setblock ~ ~ ~ dro

execute if block ~ ~ ~ dropper[facing=south] run summon armor_stand ~ ~ ~ {Fire:10s, Small:1b, Marker:1b, Invisible:1b, Tags:["dt.ac"], ArmorItems:[{},{},{},{id:"minecraft:dropper", Count:1b, tag:{CustomModelData:777777}}]}
execute if block ~ ~ ~ dropper[facing=north] run summon armor_stand ~ ~ ~ {Rotation:[180f,0f], Fire:10s, Small:1b, Marker:1b, Invisible:1b, Tags:["dt.ac"], ArmorItems:[{},{},{},{id:"minecraft:dropper", Count:1b, tag:{CustomModelData:777777}}]}
execute if block ~ ~ ~ dropper[facing=east] run summon armor_stand ~ ~ ~ {Rotation:[-90f,0f], Fire:10s, Small:1b, Marker:1b, Invisible:1b, Tags:["dt.ac"], ArmorItems:[{},{},{},{id:"minecraft:dropper", Count:1b, tag:{CustomModelData:777777}}]}
execute if block ~ ~ ~ dropper[facing=west] run summon armor_stand ~ ~ ~ {Rotation:[90f,0f], Fire:10s, Small:1b, Marker:1b, Invisible:1b, Tags:["dt.ac"], ArmorItems:[{},{},{},{id:"minecraft:dropper", Count:1b, tag:{CustomModelData:777777}}]}
execute if block ~ ~ ~ dropper[facing=up] run summon armor_stand ~ ~ ~ {Rotation:[0f,90f], Fire:10s, Small:1b, Marker:1b, Invisible:1b, Tags:["dt.ac"], ArmorItems:[{},{},{},{id:"minecraft:dropper", Count:1b, tag:{CustomModelData:777778}}]}
execute if block ~ ~ ~ dropper[facing=down] run summon armor_stand ~ ~ ~ {Rotation:[0f,0f], Fire:10s, Small:1b, Marker:1b, Invisible:1b, Tags:["dt.ac"], ArmorItems:[{},{},{},{id:"minecraft:dropper", Count:1b, tag:{CustomModelData:777779}}]}

execute as @e[type=armor_stand, sort=nearest,distance=..0.2] at @s run function autocraft:internal/blocks/autocrafter/set_recipe
data modify block ~ ~ ~ Lock set value ""