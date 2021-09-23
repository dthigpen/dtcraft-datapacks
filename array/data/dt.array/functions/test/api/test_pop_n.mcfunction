data modify storage unittest:in name set value "array pop_n"
function unittest:api/test_suite/setup


data modify storage unittest:in name set value "empty list"
function unittest:api/test_case/setup
data modify storage unittest:in expected set value []
function call_stack:push
data modify storage call_stack: call.arg0 set value []
data modify storage call_stack: call.arg1 set value 1
function dt.array:api/pop_n
data modify storage unittest:in actual set from storage call_stack: call.return
function call_stack:pop
function unittest:api/assert/equal
function unittest:api/test_case/teardown


data modify storage unittest:in name set value "pop 0"
function unittest:api/test_case/setup
data modify storage unittest:in expected set value []
function call_stack:push
data modify storage call_stack: call.arg0 set value [1,2,3]
data modify storage call_stack: call.arg1 set value 0
function dt.array:api/pop_n
data modify storage unittest:in actual set from storage call_stack: call.return
function call_stack:pop
function unittest:api/assert/equal
function unittest:api/test_case/teardown



data modify storage unittest:in name set value "pop 2"
function unittest:api/test_case/setup
data modify storage unittest:in expected set value [3,2]
function call_stack:push
data modify storage call_stack: call.arg0 set value [1,2,3]
data modify storage call_stack: call.arg1 set value 2
function dt.array:api/pop_n
data modify storage unittest:in actual set from storage call_stack: call.return
function call_stack:pop
function unittest:api/assert/equal
function unittest:api/test_case/teardown

data modify storage unittest:in name set value "pop extra"
function unittest:api/test_case/setup
data modify storage unittest:in expected set value [3,2,1]
function call_stack:push
data modify storage call_stack: call.arg0 set value [1,2,3]
data modify storage call_stack: call.arg1 set value 5
function dt.array:api/pop_n
data modify storage unittest:in actual set from storage call_stack: call.return
function call_stack:pop
function unittest:api/assert/equal
function unittest:api/test_case/teardown



function unittest:api/test_suite/teardown