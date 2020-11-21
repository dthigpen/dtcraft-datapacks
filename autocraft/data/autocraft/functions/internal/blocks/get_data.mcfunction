scoreboard players set @s dt.ac.rotation -1


execute if block ~ ~ ~ dropper[facing=south] run scoreboard players set @s dt.ac.rotation 0
execute if block ~ ~ ~ dropper[facing=north] run scoreboard players set @s dt.ac.rotation 1
execute if block ~ ~ ~ dropper[facing=east] run scoreboard players set @s dt.ac.rotation 2
execute if block ~ ~ ~ dropper[facing=west] run scoreboard players set @s dt.ac.rotation 3
execute if block ~ ~ ~ dropper[facing=up] run scoreboard players set @s dt.ac.rotation 4
execute if block ~ ~ ~ dropper[facing=down] run scoreboard players set @s dt.ac.rotation 5