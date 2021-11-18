function unittest:api/config/enable/detailed_results
data modify storage unittest:in name set value "Test Values In Set"
function unittest:api/test_suite/setup

data modify storage unittest:in name set value "Test 1"
function unittest:api/test_case/setup

function call_stack:push
data modify storage call_stack: call.arg0 set value [[1],[1,2,3],[],[1],[5]]
data modify storage call_stack: call.arg1 set value [1,2,3,4,5]
function dt.array:api/is_in_set
data modify storage unittest:in actual set from storage call_stack: call.return
function call_stack:pop


data modify storage unittest:in expected set value [true,true,false,false,true]
function unittest:api/assert/equal
function unittest:api/test_case/teardown
function unittest:api/test_suite/teardown