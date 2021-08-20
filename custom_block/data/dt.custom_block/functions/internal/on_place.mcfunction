# say on_place
# create the base block entity
execute if block ~ ~ ~ dropper[facing=south] run summon armor_stand ~ ~ ~ {Rotation:[0f,0f], Fire:10s, Small:1b, Marker:1b, Invisible:1b, Tags:["dt.cb.block_entity", "dt.cb.init"]}
execute if block ~ ~ ~ dropper[facing=north] run summon armor_stand ~ ~ ~ {Rotation:[180f,0f], Fire:10s, Small:1b, Marker:1b, Invisible:1b, Tags:["dt.cb.block_entity", "dt.cb.init"]}
execute if block ~ ~ ~ dropper[facing=east] run summon armor_stand ~ ~ ~ {Rotation:[-90f,0f], Fire:10s, Small:1b, Marker:1b, Invisible:1b, Tags:["dt.cb.block_entity", "dt.cb.init"]}
execute if block ~ ~ ~ dropper[facing=west] run summon armor_stand ~ ~ ~ {Rotation:[90f,0f], Fire:10s, Small:1b, Marker:1b, Invisible:1b, Tags:["dt.cb.block_entity", "dt.cb.init"]}
execute if block ~ ~ ~ dropper[facing=up] run summon armor_stand ~ ~ ~ {Rotation:[0f,-90f], Fire:10s, Small:1b, Marker:1b, Invisible:1b, Tags:["dt.cb.block_entity", "dt.cb.init"]}
execute if block ~ ~ ~ dropper[facing=down] run summon armor_stand ~ ~ ~ {Rotation:[0f,90f], Fire:10s, Small:1b, Marker:1b, Invisible:1b, Tags:["dt.cb.block_entity", "dt.cb.init"]}

# execute as @e[type=armor_stand,tag=dt.cb.block_entity,limit=1,sort=nearest,distance=..0.2] at @s run function dt.custom_block:internal/block_entity/set_facing_score
execute as @e[type=armor_stand,tag=dt.cb.block_entity,limit=1,sort=nearest,distance=..0.2] at @s run function #dt.custom_block:on_place
