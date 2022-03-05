# function unittest:api/config/enable/detailed_results
data modify storage unittest:in name set value "Test add_with_max"
function unittest:api/v1/test_suite/setup

data modify storage unittest:in name set value "Test over max"
function unittest:api/v1/test_case/setup
function call_stack:push
data modify storage call_stack: call.arg0 set value 2
data modify storage call_stack: call.arg1 set value 15
data modify storage call_stack: call.arg2 set value 16
function dt.array:api/helper/math/add_with_max
data modify storage unittest:in actual set from storage call_stack: call.return
data modify storage unittest:in expected set value [16,1]
function call_stack:pop
function unittest:api/v1/assert/equal
function unittest:api/v1/test_case/teardown



data modify storage unittest:in name set value "Test below max"
function unittest:api/v1/test_case/setup
function call_stack:push
data modify storage call_stack: call.arg0 set value 9
data modify storage call_stack: call.arg1 set value 1
data modify storage call_stack: call.arg2 set value 16
function dt.array:api/helper/math/add_with_max
data modify storage unittest:in actual set from storage call_stack: call.return
data modify storage unittest:in expected set value [10]
function call_stack:pop
function unittest:api/v1/assert/equal
function unittest:api/v1/test_case/teardown




data modify storage unittest:in name set value "Test at max"
function unittest:api/v1/test_case/setup
function call_stack:push
data modify storage call_stack: call.arg0 set value 9
data modify storage call_stack: call.arg1 set value 7
data modify storage call_stack: call.arg2 set value 16
function dt.array:api/helper/math/add_with_max
data modify storage unittest:in actual set from storage call_stack: call.return
data modify storage unittest:in expected set value [16]
function call_stack:pop
function unittest:api/v1/assert/equal
function unittest:api/v1/test_case/teardown



data modify storage unittest:in name set value "Test already over max"
function unittest:api/v1/test_case/setup
function call_stack:push
data modify storage call_stack: call.arg0 set value 19
data modify storage call_stack: call.arg1 set value 7
data modify storage call_stack: call.arg2 set value 16
function dt.array:api/helper/math/add_with_max
data modify storage unittest:in actual set from storage call_stack: call.return
data modify storage unittest:in expected set value [16,10]
function call_stack:pop
function unittest:api/v1/assert/equal
function unittest:api/v1/test_case/teardown



function unittest:api/v1/test_suite/teardown