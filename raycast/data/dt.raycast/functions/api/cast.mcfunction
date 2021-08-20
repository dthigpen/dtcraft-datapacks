# Increment hit id
scoreboard players set $hit_id dt.raycast 1
# Reset player score
scoreboard players reset @s dt.raycast
# Reset score tracking iterations
scoreboard players set @s dt.rc.tmp 0
scoreboard players operation $limit dt.rc.tmp = $max_distance dt.raycast
scoreboard players operation $limit dt.rc.tmp *= #ten dt.rc.tmp
scoreboard players operation $limit dt.rc.tmp /= #two dt.rc.tmp
# scoreboard players operation $limit dt.rc.tmp /= $step_distance dt.raycast
scoreboard players set $hit_sentinal dt.rc.tmp -2

# tellraw @p ["cast.mcfunction: max: ",{"score":{"name":"$max_distance","objective":"dt.raycast"}}]
# tellraw @p ["cast.mcfunction: step: ",{"score":{"name":"$step_distance","objective":"dt.raycast"}}]
# tellraw @p ["cast.mcfunction: limit: ",{"score":{"name":"$limit","objective":"dt.rc.tmp"}}]
execute as @s at @s positioned ~ ~1.5 ~ run function dt.raycast:internal/loop

# reset values to default
scoreboard players operation $max_distance dt.raycast = $max_distance dt.rc.defaults
scoreboard players operation $step_distance dt.raycast = $step_distance dt.rc.defaults