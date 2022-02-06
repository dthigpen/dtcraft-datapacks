# function unittest:api/config/enable/detailed_results
data modify storage unittest:in name set value "Test Cumulative Add"
function unittest:api/test_suite/setup

data modify storage unittest:in name set value "Test 1"
function unittest:api/test_case/setup
function call_stack:push
data modify storage call_stack: call.arg0 set value [16,2,4,9]
data modify storage call_stack: call.arg1 set value 15
data modify storage call_stack: call.arg2 set value 16
function dt.array:api/reduce/math/cumulative_add
data modify storage unittest:in actual set from storage call_stack: call.return
data modify storage unittest:in expected set value [16,16,5,9]
function call_stack:pop
function unittest:api/assert/equal
function unittest:api/test_case/teardown

data modify storage unittest:in name set value "Test over"
function unittest:api/test_case/setup
function call_stack:push
data modify storage call_stack: call.arg0 set value [16,15,14]
data modify storage call_stack: call.arg1 set value 5
data modify storage call_stack: call.arg2 set value 16
function dt.array:api/reduce/math/cumulative_add
data modify storage unittest:in actual set from storage call_stack: call.return
data modify storage unittest:in expected set value [16,16,16,2]
function call_stack:pop
function unittest:api/assert/equal
function unittest:api/test_case/teardown



data modify storage unittest:in name set value "Test over 2"
function unittest:api/test_case/setup
function call_stack:push
data modify storage call_stack: call.arg0 set value [16,19,14]
data modify storage call_stack: call.arg1 set value 5
data modify storage call_stack: call.arg2 set value 16
function dt.array:api/reduce/math/cumulative_add
data modify storage unittest:in actual set from storage call_stack: call.return
data modify storage unittest:in expected set value [16,16,16,6]
function call_stack:pop
function unittest:api/assert/equal
function unittest:api/test_case/teardown

function unittest:api/test_suite/teardown