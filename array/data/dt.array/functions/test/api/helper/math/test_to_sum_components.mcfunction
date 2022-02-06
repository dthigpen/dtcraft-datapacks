function unittest:api/config/enable/detailed_results
data modify storage unittest:in name set value "Test to_sum_components"
function unittest:api/test_suite/setup

data modify storage unittest:in name set value "Test sum greater than max"
function unittest:api/test_case/setup
function call_stack:push
data modify storage call_stack: call.arg0 set value 14
data modify storage call_stack: call.arg1 set value 4
function dt.array:api/helper/math/to_sum_components
data modify storage unittest:in actual set from storage call_stack: call.return
data modify storage unittest:in expected set value [4,4,4,2]
function call_stack:pop
function unittest:api/assert/equal
function unittest:api/test_case/teardown




data modify storage unittest:in name set value "Test sum equal to max"
function unittest:api/test_case/setup
function call_stack:push
data modify storage call_stack: call.arg0 set value 14
data modify storage call_stack: call.arg1 set value 14
function dt.array:api/helper/math/to_sum_components
data modify storage unittest:in actual set from storage call_stack: call.return
data modify storage unittest:in expected set value [14]
function call_stack:pop
function unittest:api/assert/equal
function unittest:api/test_case/teardown





data modify storage unittest:in name set value "Test sum less than to max"
function unittest:api/test_case/setup
function call_stack:push
data modify storage call_stack: call.arg0 set value 14
data modify storage call_stack: call.arg1 set value 19
function dt.array:api/helper/math/to_sum_components
data modify storage unittest:in actual set from storage call_stack: call.return
data modify storage unittest:in expected set value [14]
function call_stack:pop
function unittest:api/assert/equal
function unittest:api/test_case/teardown



function unittest:api/test_suite/teardown