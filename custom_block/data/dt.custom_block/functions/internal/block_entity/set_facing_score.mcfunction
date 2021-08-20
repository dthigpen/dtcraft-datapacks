say set facing
execute if block ~ ~ ~ dropper[facing=south] run scoreboard players operation @s dt.cb.facing = #south dt.cb.facing
execute if block ~ ~ ~ dropper[facing=north] run scoreboard players operation @s dt.cb.facing = #north dt.cb.facing
execute if block ~ ~ ~ dropper[facing=east] run scoreboard players operation @s dt.cb.facing = #east dt.cb.facing
execute if block ~ ~ ~ dropper[facing=west] run scoreboard players operation @s dt.cb.facing = #west dt.cb.facing
execute if block ~ ~ ~ dropper[facing=up] run scoreboard players operation @s dt.cb.facing = #up dt.cb.facing
execute if block ~ ~ ~ dropper[facing=down] run scoreboard players operation @s dt.cb.facing = #down dt.cb.facing
