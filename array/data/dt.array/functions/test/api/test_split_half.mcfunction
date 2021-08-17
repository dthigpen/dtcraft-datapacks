data modify storage unittest:in name set value "array split_half"
function unittest:api/test_suite/setup


data modify storage unittest:in name set value "empty list"
function unittest:api/test_case/setup
data modify storage unittest:in expected set value [[],[]]
function call_stack:push
data modify storage call_stack: call.arg0 set value []
function dt.array:api/split_half
data modify storage unittest:in actual set from storage call_stack: call.result
function call_stack:pop
function unittest:api/assert/equal
function unittest:api/test_case/teardown


data modify storage unittest:in name set value "list of one"
function unittest:api/test_case/setup
data modify storage unittest:in expected set value [[],[1]]
function call_stack:push
data modify storage call_stack: call.arg0 set value [1]
function dt.array:api/split_half
data modify storage unittest:in actual set from storage call_stack: call.result
function call_stack:pop
function unittest:api/assert/equal
function unittest:api/test_case/teardown

data modify storage unittest:in name set value "list of two"
function unittest:api/test_case/setup
data modify storage unittest:in expected set value [[1],[2]]
function call_stack:push
data modify storage call_stack: call.arg0 set value [1,2]
function dt.array:api/split_half
data modify storage unittest:in actual set from storage call_stack: call.result
function call_stack:pop
function unittest:api/assert/equal
function unittest:api/test_case/teardown



data modify storage unittest:in name set value "list of five"
function unittest:api/test_case/setup
data modify storage unittest:in expected set value [[1,2],[3,4,5]]
function call_stack:push
data modify storage call_stack: call.arg0 set value [1,2,3,4,5]
function dt.array:api/split_half
data modify storage unittest:in actual set from storage call_stack: call.result
function call_stack:pop
function unittest:api/assert/equal
function unittest:api/test_case/teardown

function unittest:api/test_suite/teardown
