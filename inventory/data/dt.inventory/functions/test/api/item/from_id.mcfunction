# function unittest:api/config/enable/detailed_results
data modify storage unittest:in name set value "Test item from id"
function unittest:api/v1/test_suite/setup

data modify storage unittest:in name set value "Test 1"
function unittest:api/v1/test_case/setup

function call_stack:push
data modify storage call_stack: call.arg0 set value 733
data modify storage call_stack: call.arg1 set value 2b
function dt.inventory:api/item/from_id
data modify storage unittest:in actual set from storage call_stack: call.return
function call_stack:pop
data modify storage unittest:in expected set value {id:"minecraft:feather",Count:2b}
function unittest:api/v1/assert/equal
function unittest:api/v1/test_case/teardown
function unittest:api/v1/test_suite/teardown