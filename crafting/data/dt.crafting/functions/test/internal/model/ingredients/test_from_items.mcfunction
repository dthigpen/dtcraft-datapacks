function unittest:api/config/enable/detailed_results

function unittest:api/test_suite/setup
data modify storage call_stack: this.name set value "Test from items"


function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "Test 1"

data modify storage call_stack: call.arg0 set value [{id:"minecraft:coal",Count:1b,Slot:2b},{id:"minecraft:feather",Count:1b,Slot:4b},{id:"minecraft:stick",Count:1b,Slot:11b}]
function dt.crafting:internal/model/ingredients/from_items
data modify storage call_stack: call.actual set from storage call_stack: call.return
data modify storage call_stack: call.expected set value {grid:[ [[0,720,0],[0,765,0],[0,0,0]],[[0b,1b,0b],[0b,1b,0b],[0b,0b,0b]] ],items:{crafting:[{Count:1b,Slot:2b,id:"minecraft:coal"},{Count:1b,Slot:11b,id:"minecraft:stick"}],extras:[{Count:1b,Slot:4b,id:"minecraft:feather"}]}}
function unittest:api/assert/equal
function unittest:api/test_case/teardown


function unittest:api/test_suite/teardown