# function unittest:api/config/enable/detailed_results
data modify storage unittest:in name set value "array n_array_of"
function unittest:api/test_suite/setup


data modify storage unittest:in name set value "good"
function unittest:api/test_case/setup
data modify storage unittest:in expected set value [42,42,42]
function call_stack:push
data modify storage call_stack: call.arg0 set value 3
data modify storage call_stack: call.arg1 set value 42
function dt.array:api/n_array_of
data modify storage unittest:in actual set from storage call_stack: call.result
function call_stack:pop
function unittest:api/assert/equal
function unittest:api/test_case/teardown



data modify storage unittest:in name set value "n_is_-1"
function unittest:api/test_case/setup
data modify storage unittest:in expected set value []
function call_stack:push
data modify storage call_stack: call.arg0 set value -1
data modify storage call_stack: call.arg1 set value 42
function dt.array:api/n_array_of
data modify storage unittest:in actual set from storage call_stack: call.result
function call_stack:pop
function unittest:api/assert/equal
function unittest:api/test_case/teardown


data modify storage unittest:in name set value "n_is_0"
function unittest:api/test_case/setup
data modify storage unittest:in expected set value []
function call_stack:push
data modify storage call_stack: call.arg0 set value 0
data modify storage call_stack: call.arg1 set value 42
function dt.array:api/n_array_of
data modify storage unittest:in actual set from storage call_stack: call.result
function call_stack:pop
function unittest:api/assert/equal
function unittest:api/test_case/teardown


data modify storage unittest:in name set value "of_objects"
function unittest:api/test_case/setup
data modify storage unittest:in expected set value [{foo:bar},{foo:bar}]
function call_stack:push
data modify storage call_stack: call.arg0 set value 2
data modify storage call_stack: call.arg1 set value {foo:bar}
function dt.array:api/n_array_of
data modify storage unittest:in actual set from storage call_stack: call.result
function call_stack:pop
function unittest:api/assert/equal
function unittest:api/test_case/teardown

function unittest:api/test_suite/teardown