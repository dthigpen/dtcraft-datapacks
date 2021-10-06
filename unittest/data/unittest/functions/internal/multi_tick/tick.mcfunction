
function unittest:internal/storage/clear/internal/temp
function unittest:internal/storage/clear/in

data modify storage unittest:in name set value "Temp Test Suite"
function unittest:api/test_suite/setup
# data modify storage unittest:in name set value '[{"text":"Tick: "}, {"nbt":"data.tick","entity":"@s"}]'
data modify storage unittest:in name set from entity @s data.tick
function unittest:api/test_case/setup
function unittest:api/assert/force/fail
function #unittest:multi_tick
function unittest:api/test_case/teardown
# tellraw @p ["tick.mcfunction: ",{"nbt":"suite.results[-1]","storage":"unittest:internal"}]
execute if data storage unittest:internal suite.results[-1].results[1] run data remove storage unittest:internal suite.results[-1].results[0]
data modify entity @s data.suite.results append from storage unittest:internal suite.results[-1]
function unittest:internal/storage/clear/all

# tellraw @p ["tick.mcfunction: ",{"nbt":"temp","storage":"unittest:internal"}]
# increment tick
scoreboard players set $tick dt.tmp 0
execute store result score $tick dt.tmp run data get entity @s data.tick
scoreboard players add $tick dt.tmp 1
execute store result entity @s data.tick int 1 run scoreboard players get $tick dt.tmp
# tellraw @p ["tick.mcfunction: ",{"score":{"name":"$tick","objective":"dt.tmp"}}]
# tellraw @p ["tick.mcfunction: ",{"nbt":"data.suite.results[-1]","entity":"@s"}]

execute unless data entity @s data.suite.results[-1].results[-1] run data merge storage unittest:internal {temp:{return:{pass:true}}}
execute if data entity @s data.suite.results[-1] run data modify storage unittest:internal temp.result set from entity @s data.suite.results[-1].results[-1]
# Remove the result from running on an extra tick
# If the suite has at least two test cases in which the last has only one result and that result is the sentinal, remove it
execute unless data storage unittest:internal {temp:{return:{pass:true}}} if data entity @s data.suite.results[1] if data entity @s data.suite.results[-1].results[0] unless data entity @s data.suite.results[-1].results[1] if data entity @s data.suite.results[-1].results[{pass:false, msg:"force fail"}] run data remove entity @s data.suite.results[-1]
execute unless data storage unittest:internal {temp:{return:{pass:true}}} run function unittest:api/multi_tick/teardown