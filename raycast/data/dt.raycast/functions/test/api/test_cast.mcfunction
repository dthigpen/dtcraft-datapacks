
scoreboard players set $max_distance dt.raycast 6
function dt.raycast:api/cast
execute if score @s dt.raycast matches 0.. as @e[predicate=dt.raycast:hit_markers] if score @s dt.raycast = $hit_id dt.raycast at @s run say hit!
execute if score @s dt.raycast matches 0.. as @e[type=marker,tag=dt.raycast.hit] if score @s dt.raycast = $hit_id dt.raycast at @s run setblock ~ ~ ~ red_wool
execute unless score @s dt.raycast matches 0.. run say test_cast no hit