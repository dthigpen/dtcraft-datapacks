# function unittest:api/config/enable/detailed_results
function unittest:api/test_suite/setup
data modify storage call_stack: this.name set value "Test item from id"

function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "Test 1"

data modify storage call_stack: call.arg0 set value 733
data modify storage call_stack: call.arg1 set value 2b
function dt.inventory:api/item/from_id
data modify storage call_stack: call.actual set from storage call_stack: call.return
data modify storage call_stack: call.expected set value {id:"minecraft:feather",Count:2b}
function unittest:api/assert/equal
function unittest:api/test_case/teardown
function unittest:api/test_suite/teardown