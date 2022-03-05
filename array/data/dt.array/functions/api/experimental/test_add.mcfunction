function unittest:api/config/enable/detailed_results
data modify storage unittest:in name set value "Test math/add"
function unittest:api/v1/test_suite/setup


data modify storage unittest:in name set value "Test 1"
function unittest:api/v1/test_case/setup
function call_stack:push
data modify storage call_stack: call.arg0 set value [-2,-1,0,1]
data modify storage call_stack: call.arg1 set value 1
function dt.array:api/experimental/add
data modify storage unittest:in actual set from storage call_stack: call.return
function call_stack:pop
data modify storage unittest:in expected set value [-1,0,1,2]
function unittest:api/v1/assert/equal
function unittest:api/v1/test_case/teardown



data modify storage unittest:in name set value "Test 2, bytes input"
function unittest:api/v1/test_case/setup
function call_stack:push
data modify storage call_stack: call.arg0 set value [0b,1b, 4b]
data modify storage call_stack: call.arg1 set value 10b
function dt.array:api/experimental/add
data modify storage unittest:in actual set from storage call_stack: call.return
function call_stack:pop
data modify storage unittest:in expected set value [10,11,14]
function unittest:api/v1/assert/equal
function unittest:api/v1/test_case/teardown

function unittest:api/v1/test_suite/teardown