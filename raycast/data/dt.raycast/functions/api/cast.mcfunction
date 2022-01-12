#> dt.raycast:api/cast
# cast a ray with max distance set by $max_distance dt.raycast or default 200 meters
# @params
#   storage call_stack: call.arg0
#       description
# @output
#   storage call_stack: call.return
#       description
# Increment hit id
scoreboard players add $hit_id dt.raycast 1
# Reset player score
scoreboard players reset @s dt.raycast
# Reset score tracking iterations
scoreboard players set @s dt.rc.tmp 0
scoreboard players operation $limit dt.rc.tmp = $max_distance dt.raycast
scoreboard players operation $limit dt.rc.tmp *= #ten dt.rc.tmp
scoreboard players operation $limit dt.rc.tmp /= #two dt.rc.tmp
# scoreboard players operation $limit dt.rc.tmp /= $step_distance dt.raycast
scoreboard players set $hit_sentinal dt.rc.tmp -2

execute as @s at @s anchored eyes positioned ^ ^ ^ anchored feet run function dt.raycast:internal/loop

# reset values to default
scoreboard players operation $max_distance dt.raycast = $max_distance dt.rc.defaults
scoreboard players operation $step_distance dt.raycast = $step_distance dt.rc.defaults