scoreboard players operation @s dt.raycast = $hit_id dt.raycast
data modify entity @s data.Owner set from entity @a[tag=dt.raycast.caster, limit=1] UUID
tag @s add dt.raycast.hit
tag @s remove dt.raycast.init