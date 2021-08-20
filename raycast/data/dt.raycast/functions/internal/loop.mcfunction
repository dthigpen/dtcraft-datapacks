scoreboard players add @s dt.rc.tmp 1
execute unless block ~ ~ ~ #dt.raycast:ignore run scoreboard players operation @s dt.rc.tmp = $hit_sentinal dt.rc.tmp
execute if score @s dt.rc.tmp > $limit dt.rc.tmp run scoreboard players set @s dt.raycast -1
execute if score @s dt.rc.tmp = $hit_sentinal dt.rc.tmp positioned ^ ^ ^ run function dt.raycast:internal/hit
execute if score @s dt.rc.tmp matches 0.. if score @s dt.rc.tmp <= $limit dt.rc.tmp positioned ^ ^ ^0.2 run function dt.raycast:internal/loop
