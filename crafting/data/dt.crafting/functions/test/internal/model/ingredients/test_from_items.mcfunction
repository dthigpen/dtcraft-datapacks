data modify storage unittest:in name set value "Test from items"
function unittest:api/config/enable/detailed_results
function unittest:api/test_suite/setup


data modify storage unittest:in name set value "Test 1"
function unittest:api/test_case/setup

function call_stack:push
data modify storage call_stack: call.arg0 set value [{id:"minecraft:coal",Count:1b,Slot:2b},{id:"minecraft:feather",Count:1b,Slot:4b},{id:"minecraft:stick",Count:1b,Slot:11b}]
function dt.crafting:internal/model/ingredients/from_items
data modify storage unittest:in actual set from storage call_stack: call.return
function call_stack:pop

data modify storage unittest:in expected set value [[0,684,0],[0,729,0],[0,0,0],[[0b,1b,0b],[0b,1b,0b],[0b,0b,0b] ]]
function unittest:api/assert/equal
function unittest:api/test_case/teardown


function unittest:api/test_suite/teardown