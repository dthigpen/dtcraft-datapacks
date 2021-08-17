# function unittest:api/config/enable/detailed_results
data modify storage unittest:in name set value "array difference"
function unittest:api/test_suite/setup


data modify storage unittest:in name set value "b_subset_a"
function unittest:api/test_case/setup
data modify storage unittest:in expected set value [1,3,4]
function call_stack:push
data modify storage call_stack: call.arg0 set value [1,2,3,4,5]
data modify storage call_stack: call.arg1 set value [2,5]
function dt.array:api/difference
data modify storage unittest:in actual set from storage call_stack: call.result
function call_stack:pop
function unittest:api/assert/equal
function unittest:api/test_case/teardown



data modify storage unittest:in name set value "a_subset_b"
function unittest:api/test_case/setup
data modify storage unittest:in expected set value []
function call_stack:push
data modify storage call_stack: call.arg0 set value [2,5]
data modify storage call_stack: call.arg1 set value [1,2,3,4,5]
function dt.array:api/difference
data modify storage unittest:in actual set from storage call_stack: call.result
function call_stack:pop
function unittest:api/assert/equal
function unittest:api/test_case/teardown



data modify storage unittest:in name set value "between_objects"
function unittest:api/test_case/setup
data modify storage unittest:in expected set value [{id:"c", value:456},{id:"d", value:789}]
function call_stack:push
data modify storage call_stack: call.arg0 set value [{id:"a", value:123},{id:"c", value:456},{id:"a", value:123},{id:"d", value:789}]
data modify storage call_stack: call.arg1 set value [{id:"a", value:123}]
function dt.array:api/difference
data modify storage unittest:in actual set from storage call_stack: call.result
function call_stack:pop
function unittest:api/assert/equal
function unittest:api/test_case/teardown



data modify storage unittest:in name set value "first_is_empty_list"
function unittest:api/test_case/setup
data modify storage unittest:in expected set value []
function call_stack:push
data modify storage call_stack: call.arg0 set value []
data modify storage call_stack: call.arg1 set value [2,5]
function dt.array:api/difference
data modify storage unittest:in actual set from storage call_stack: call.result
function call_stack:pop
function unittest:api/assert/equal
function unittest:api/test_case/teardown



data modify storage unittest:in name set value "second_is_empty_list"
function unittest:api/test_case/setup
data modify storage unittest:in expected set value [2,5]
function call_stack:push
data modify storage call_stack: call.arg0 set value [2,5]
data modify storage call_stack: call.arg1 set value []
function dt.array:api/difference
data modify storage unittest:in actual set from storage call_stack: call.result
function call_stack:pop
function unittest:api/assert/equal
function unittest:api/test_case/teardown


function unittest:api/test_suite/teardown
