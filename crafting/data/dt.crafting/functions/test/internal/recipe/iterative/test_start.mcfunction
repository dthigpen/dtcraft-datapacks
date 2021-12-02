#function unittest:api/config/enable/detailed_results
data modify storage unittest:in name set value "Test start"
function unittest:api/test_suite/setup

data modify storage unittest:in name set value "Test 1"
function unittest:api/test_case/setup

function call_stack:push
data modify storage call_stack: call.arg0 set value []
data modify storage call_stack: call.arg0 append value {id:"minecraft:cobblestone",Slot:1b, Count:1b}
data modify storage call_stack: call.arg0 append value {id:"minecraft:cobblestone",Slot:2b, Count:1b}
data modify storage call_stack: call.arg0 append value {id:"minecraft:cobblestone",Slot:10b, Count:1b}
data modify storage call_stack: call.arg0 append value {id:"minecraft:stick",Slot:11b, Count:1b}
data modify storage call_stack: call.arg0 append value {id:"minecraft:stick",Slot:20b, Count:1b}
function dt.crafting:internal/recipe/iterative/start

function call_stack:pop

data modify storage unittest:in expected set value true
function unittest:api/assert/equal
function unittest:api/test_case/teardown


function unittest:api/test_suite/teardown