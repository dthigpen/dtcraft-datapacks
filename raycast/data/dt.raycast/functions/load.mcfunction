function version:api/setup {args: { \
    id: "$dt.raycast", \
    version: [0,0,0], \
}}

scoreboard objectives add dt.rc.tmp dummy
scoreboard players set #two dt.rc.tmp 2
scoreboard players set #ten dt.rc.tmp 10

scoreboard objectives add dt.rc.defaults dummy
scoreboard players set $step_distance dt.rc.defaults 1
scoreboard players set $max_distance dt.rc.defaults 200

scoreboard objectives add dt.raycast dummy
scoreboard players operation $max_distance dt.raycast = $max_distance dt.rc.defaults
scoreboard players operation $step_distance dt.raycast = $step_distance dt.rc.defaults