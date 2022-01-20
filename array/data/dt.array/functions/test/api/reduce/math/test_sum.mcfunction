data modify storage unittest:in name set value "array sum"
function unittest:api/test_suite/setup


data modify storage unittest:in name set value "empty list"
function unittest:api/test_case/setup
data modify storage unittest:in expected set value 0
function call_stack:push
data modify storage call_stack: call.arg0 set value []
function dt.array:api/reduce/math/sum
data modify storage unittest:in actual set from storage call_stack: call.return
function call_stack:pop
function unittest:api/assert/equal
function unittest:api/test_case/teardown

data modify storage unittest:in name set value "good"
function unittest:api/test_case/setup
data modify storage unittest:in expected set value 15
function call_stack:push
data modify storage call_stack: call.arg0 set value [1,2,3,4,5]
function dt.array:api/reduce/math/sum
data modify storage unittest:in actual set from storage call_stack: call.return
function call_stack:pop
function unittest:api/assert/equal
function unittest:api/test_case/teardown

data modify storage unittest:in name set value "list of 0s"
function unittest:api/test_case/setup
data modify storage unittest:in expected set value 0
function call_stack:push
data modify storage call_stack: call.arg0 set value [0,0,0,0]
function dt.array:api/reduce/math/sum
data modify storage unittest:in actual set from storage call_stack: call.return
function call_stack:pop
function unittest:api/assert/equal
function unittest:api/test_case/teardown


data modify storage unittest:in name set value "list of 1 number"
function unittest:api/test_case/setup
data modify storage unittest:in expected set value 9
function call_stack:push
data modify storage call_stack: call.arg0 set value [9]
function dt.array:api/reduce/math/sum
data modify storage unittest:in actual set from storage call_stack: call.return
function call_stack:pop
function unittest:api/assert/equal
function unittest:api/test_case/teardown


function unittest:api/test_suite/teardown