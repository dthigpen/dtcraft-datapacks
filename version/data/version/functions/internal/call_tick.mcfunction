scoreboard players reset $dt.tmp.dep load.status
# Only tick if successfully loaded
$schedule clear $(tick)
$execute if score $(id) load.status matches 1 run schedule function $(tick) 1t replace
$execute if score $(id) load.status matches 1 run say tick loaded