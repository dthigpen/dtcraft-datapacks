summon marker ~ ~ ~ {Tags:["dt.raycast.init"]}
scoreboard players operation @s dt.raycast = $hit_id dt.raycast
tag @s add dt.raycast.caster
execute as @e[type=marker,tag=dt.raycast.init,limit=1,sort=nearest] at @s run function dt.raycast:internal/hit_as_marker
tag @s remove dt.raycast.caster
schedule function dt.raycast:internal/kill 1t replace