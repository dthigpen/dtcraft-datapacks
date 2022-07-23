function unittest:api/config/enable/detailed_results
function unittest:api/test_suite/setup
data modify storage call_stack: this.name set value "Test block insert"


function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "Test 1"

data modify storage call_stack: call.arg0 set value [{id:"minecraft:feather",Count:1b,Slot:1b}]
execute positioned 10 65 44 run setblock ~ ~ ~ chest replace
execute positioned 10 65 44 run function dt.inventory:api/items/loot/block/insert
data modify storage call_stack: call.actual set from storage call_stack: call.return
data modify storage call_stack: call.expected set value []
function unittest:api/assert/equal
execute positioned 10 65 44 run data modify storage call_stack: call.actual set from block ~ ~ ~ Items
data modify storage call_stack: call.expected set value [{id:"minecraft:feather",Count:1b,Slot:0b}]

function unittest:api/assert/equal

function unittest:api/test_case/teardown




function unittest:api/test_suite/teardown