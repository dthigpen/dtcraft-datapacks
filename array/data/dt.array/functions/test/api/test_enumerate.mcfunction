# function unittest:api/config/enable/detailed_results
data modify storage unittest:in name set value "Test enumerate"
function unittest:api/v1/test_suite/setup


data modify storage unittest:in name set value "Test positive range"
function unittest:api/v1/test_case/setup
function call_stack:push
data modify storage call_stack: call.arg0 set value 0
data modify storage call_stack: call.arg1 set value 4
function dt.array:api/enumerate
data modify storage unittest:in actual set from storage call_stack: call.return
function call_stack:pop
data modify storage unittest:in expected set value [0,1,2,3]
function unittest:api/v1/assert/equal
function unittest:api/v1/test_case/teardown




data modify storage unittest:in name set value "Test positive range, step 2"
function unittest:api/v1/test_case/setup
function call_stack:push
data modify storage call_stack: call.arg0 set value 0
data modify storage call_stack: call.arg1 set value 7
data modify storage call_stack: call.arg2 set value 2
function dt.array:api/enumerate
data modify storage unittest:in actual set from storage call_stack: call.return
function call_stack:pop
data modify storage unittest:in expected set value [0,2,4,6]
function unittest:api/v1/assert/equal
function unittest:api/v1/test_case/teardown


data modify storage unittest:in name set value "Test negative range"
function unittest:api/v1/test_case/setup
function call_stack:push
data modify storage call_stack: call.arg0 set value 0
data modify storage call_stack: call.arg1 set value -3
data modify storage call_stack: call.arg2 set value -1
function dt.array:api/enumerate
data modify storage unittest:in actual set from storage call_stack: call.return
function call_stack:pop
data modify storage unittest:in expected set value [0,-1,-2]
function unittest:api/v1/assert/equal
function unittest:api/v1/test_case/teardown



data modify storage unittest:in name set value "Test out of range 1"
function unittest:api/v1/test_case/setup
function call_stack:push
data modify storage call_stack: call.arg0 set value 0
data modify storage call_stack: call.arg1 set value 0
data modify storage call_stack: call.arg2 set value 1
function dt.array:api/enumerate
data modify storage unittest:in actual set from storage call_stack: call.return
function call_stack:pop
data modify storage unittest:in expected set value []
function unittest:api/v1/assert/equal
function unittest:api/v1/test_case/teardown



data modify storage unittest:in name set value "Test out of range 2"
function unittest:api/v1/test_case/setup
function call_stack:push
data modify storage call_stack: call.arg0 set value 5
data modify storage call_stack: call.arg1 set value 0
data modify storage call_stack: call.arg2 set value 1
function dt.array:api/enumerate
data modify storage unittest:in actual set from storage call_stack: call.return
function call_stack:pop
data modify storage unittest:in expected set value []
function unittest:api/v1/assert/equal
function unittest:api/v1/test_case/teardown


function unittest:api/v1/test_suite/teardown