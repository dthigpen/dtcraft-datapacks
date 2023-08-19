$execute unless score $(dep_id) load.status matches 1 run tellraw @p ["",{"text":"Error: ","color":"dark_red"},{"text":"$(id)","bold":true}," requires ",{"text":"$(dep_id) ","bold":true}]
scoreboard players set $dt.tmp.dep load.status 0
$execute if score $(dep_id).version.major load.status matches $(dep_major) if score $(dep_id).version.minor load.status matches $(dep_minor).. run scoreboard players set $dt.tmp.dep load.status 1
$execute if score $(dep_id) load.status matches 1 unless score $dt.tmp.dep load.status matches 1 run tellraw @p ["",{"text":"Error: ","color":"dark_red"},{"text":"$(id)","bold":true}," expected ",{"text":"$(dep_id) ","bold":true},"$(dep_major).$(dep_minor)"," but found ",{"score":{"name":"$(dep_id).version.major","objective":"load.status"}},".",{"score":{"name":"$(dep_id).version.minor","objective":"load.status"}}]
$execute if score $(dep_id) load.status matches 1 unless score $dt.tmp.dep load.status matches 1 run scoreboard players set $(id) load.status 0

function version:internal/convert_dep
execute if data storage version: args.dep_id run function version:internal/check_deps with storage version: args