# function unittest:api/config/enable/detailed_results
data modify storage unittest:in name set value "array concat"
function unittest:api/test_suite/setup

data modify storage unittest:in name set value "non_empty_arrays"
function unittest:api/test_case/setup
data modify storage unittest:in expected set value [1,2,3,4,5]

function call_stack:push
data modify storage call_stack: call.arg0 set value [1,2,3]
data modify storage call_stack: call.arg1 set value [4,5]
function dt.array:api/concat
data modify storage unittest:in actual set from storage call_stack: call.result
function call_stack:pop
function unittest:api/assert/equal
function unittest:api/test_case/teardown



data modify storage unittest:in name set value "empty_first_array"
function unittest:api/test_case/setup
data modify storage unittest:in expected set value [4,5]

function call_stack:push
data modify storage call_stack: call.arg0 set value []
data modify storage call_stack: call.arg1 set value [4,5]
function dt.array:api/concat
data modify storage unittest:in actual set from storage call_stack: call.result
function call_stack:pop
function unittest:api/assert/equal
function unittest:api/test_case/teardown



data modify storage unittest:in name set value "empty_second_array"
function unittest:api/test_case/setup
data modify storage unittest:in expected set value [4,5]
function call_stack:push
data modify storage call_stack: call.arg0 set value [4,5]
data modify storage call_stack: call.arg1 set value []
function dt.array:api/concat
data modify storage unittest:in actual set from storage call_stack: call.result
function call_stack:pop
function unittest:api/assert/equal
function unittest:api/test_case/teardown



data modify storage unittest:in name set value "both_empty_arrays"
function unittest:api/test_case/setup
data modify storage unittest:in expected set value []
function call_stack:push
data modify storage call_stack: call.arg0 set value []
data modify storage call_stack: call.arg1 set value []
function dt.array:api/concat
data modify storage unittest:in actual set from storage call_stack: call.result
function call_stack:pop
function unittest:api/assert/equal
function unittest:api/test_case/teardown



function unittest:api/test_suite/teardown