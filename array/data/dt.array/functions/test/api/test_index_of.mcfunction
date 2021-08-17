data modify storage unittest:in name set value "array n_array_of"
function unittest:api/test_suite/setup


data modify storage unittest:in name set value "empty list"
function unittest:api/test_case/setup
data modify storage unittest:in expected set value -1
function call_stack:push
data modify storage call_stack: call.arg0 set value []
data modify storage call_stack: call.arg1 set value 3
function dt.array:api/index_of
data modify storage unittest:in actual set from storage call_stack: call.result
function call_stack:pop
function unittest:api/assert/equal
function unittest:api/test_case/teardown


data modify storage unittest:in name set value "found in list"
function unittest:api/test_case/setup
data modify storage unittest:in expected set value 1
function call_stack:push
data modify storage call_stack: call.arg0 set value [1,2,3,4,5,6]
data modify storage call_stack: call.arg1 set value 2
function dt.array:api/index_of
data modify storage unittest:in actual set from storage call_stack: call.result
function call_stack:pop
function unittest:api/assert/equal
function unittest:api/test_case/teardown


data modify storage unittest:in name set value "not found in list"
function unittest:api/test_case/setup
data modify storage unittest:in expected set value -1
function call_stack:push
data modify storage call_stack: call.arg0 set value [1,2,3,4,5,6]
data modify storage call_stack: call.arg1 set value 20
function dt.array:api/index_of
data modify storage unittest:in actual set from storage call_stack: call.result
function call_stack:pop
function unittest:api/assert/equal
function unittest:api/test_case/teardown

function unittest:api/test_suite/teardown