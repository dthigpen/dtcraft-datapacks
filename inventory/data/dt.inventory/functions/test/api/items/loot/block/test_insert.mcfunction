function unittest:api/config/enable/detailed_results
data modify storage unittest:in name set value "Test block insert"
function unittest:api/v1/test_suite/setup


data modify storage unittest:in name set value "Test 1"
function unittest:api/v1/test_case/setup

function call_stack:push
data modify storage call_stack: call.arg0 set value [{id:"minecraft:feather",Count:1b,Slot:1b}]
execute positioned 10 65 44 run setblock ~ ~ ~ chest replace
execute positioned 10 65 44 run function dt.inventory:api/items/loot/block/insert
data modify storage unittest:in actual set from storage call_stack: call.return
function call_stack:pop
data modify storage unittest:in expected set value []
function unittest:api/v1/assert/equal
execute positioned 10 65 44 run data modify storage unittest:in actual set from block ~ ~ ~ Items
data modify storage unittest:in expected set value [{id:"minecraft:feather",Count:1b,Slot:0b}]

function unittest:api/v1/assert/equal

function unittest:api/v1/test_case/teardown




function unittest:api/v1/test_suite/teardown