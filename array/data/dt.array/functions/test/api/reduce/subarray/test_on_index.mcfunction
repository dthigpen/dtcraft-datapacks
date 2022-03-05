function unittest:api/config/enable/detailed_results
data modify storage unittest:in name set value "Test on_index"
function unittest:api/v1/test_suite/setup




data modify storage unittest:in name set value "Empty list"
function unittest:api/v1/test_case/setup
function call_stack:push
data modify storage call_stack: call.arg0 set value []
data modify storage call_stack: call.arg1 set value 2
function dt.array:api/reduce/subarray/on_index
data modify storage unittest:in actual set from storage call_stack: call.return
function call_stack:pop
data modify storage unittest:in expected set value [[],[]]
function unittest:api/v1/assert/equal
function unittest:api/v1/test_case/teardown



data modify storage unittest:in name set value "1 item list"
function unittest:api/v1/test_case/setup
function call_stack:push
data modify storage call_stack: call.arg0 set value [1]
data modify storage call_stack: call.arg1 set value 0
function dt.array:api/reduce/subarray/on_index
data modify storage unittest:in actual set from storage call_stack: call.return
function call_stack:pop
data modify storage unittest:in expected set value [[],[1]]
function unittest:api/v1/assert/equal
function unittest:api/v1/test_case/teardown



data modify storage unittest:in name set value "1 item list, bad index"
function unittest:api/v1/test_case/setup
function call_stack:push
data modify storage call_stack: call.arg0 set value [1]
data modify storage call_stack: call.arg1 set value 10
function dt.array:api/reduce/subarray/on_index
data modify storage unittest:in actual set from storage call_stack: call.return
function call_stack:pop
data modify storage unittest:in expected set value [[1],[]]
function unittest:api/v1/assert/equal
function unittest:api/v1/test_case/teardown

data modify storage unittest:in name set value "Odd split"
function unittest:api/v1/test_case/setup
function call_stack:push
data modify storage call_stack: call.arg0 set value [1,2,3,4,5]
data modify storage call_stack: call.arg1 set value 2
function dt.array:api/reduce/subarray/on_index
data modify storage unittest:in actual set from storage call_stack: call.return
function call_stack:pop
data modify storage unittest:in expected set value [[1,2],[3,4,5]]
function unittest:api/v1/assert/equal
function unittest:api/v1/test_case/teardown


data modify storage unittest:in name set value "Even split"
function unittest:api/v1/test_case/setup
function call_stack:push
data modify storage call_stack: call.arg0 set value [1,2,3,4,5,6]
data modify storage call_stack: call.arg1 set value 3
function dt.array:api/reduce/subarray/on_index
data modify storage unittest:in actual set from storage call_stack: call.return
function call_stack:pop
data modify storage unittest:in expected set value [[1,2,3],[4,5,6]]
function unittest:api/v1/assert/equal
function unittest:api/v1/test_case/teardown





function unittest:api/v1/test_suite/teardown