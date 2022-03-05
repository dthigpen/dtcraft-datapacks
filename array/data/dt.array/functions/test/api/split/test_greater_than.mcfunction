function unittest:api/config/enable/detailed_results
data modify storage unittest:in name set value "Test split_greater_than"
function unittest:api/v1/test_suite/setup

data modify storage unittest:in name set value "List of 0 items"
function unittest:api/v1/test_case/setup
function call_stack:push
data modify storage call_stack: call.arg0 set value []
data modify storage call_stack: call.arg1 set value []
data modify storage call_stack: call.arg2 set value 26
function dt.array:api/split/greater_than
data modify storage unittest:in actual set from storage call_stack: call.return
function call_stack:pop
data modify storage unittest:in expected set value [[],[]]
function unittest:api/v1/assert/equal
function unittest:api/v1/test_case/teardown



data modify storage unittest:in name set value "List of 1 item, greater than"
function unittest:api/v1/test_case/setup
function call_stack:push
data modify storage call_stack: call.arg0 set value [123]
data modify storage call_stack: call.arg1 set value [123]
data modify storage call_stack: call.arg2 set value 26
function dt.array:api/split/greater_than
data modify storage unittest:in actual set from storage call_stack: call.return
function call_stack:pop
data modify storage unittest:in expected set value [[123],[]]
function unittest:api/v1/assert/equal
function unittest:api/v1/test_case/teardown

data modify storage unittest:in name set value "List of 1 item, not greater than"
function unittest:api/v1/test_case/setup
function call_stack:push
data modify storage call_stack: call.arg0 set value [1]
data modify storage call_stack: call.arg1 set value [1]
data modify storage call_stack: call.arg2 set value 26
function dt.array:api/split/greater_than
data modify storage unittest:in actual set from storage call_stack: call.return
function call_stack:pop
data modify storage unittest:in expected set value [[],[1]]
function unittest:api/v1/assert/equal
function unittest:api/v1/test_case/teardown




data modify storage unittest:in name set value "List of 2 items, descending"
function unittest:api/v1/test_case/setup
function call_stack:push
data modify storage call_stack: call.arg0 set value [123,1]
data modify storage call_stack: call.arg1 set value [123,1]
data modify storage call_stack: call.arg2 set value 26
function dt.array:api/split/greater_than
data modify storage unittest:in actual set from storage call_stack: call.return
function call_stack:pop
data modify storage unittest:in expected set value [[123],[1]]
function unittest:api/v1/assert/equal
function unittest:api/v1/test_case/teardown



data modify storage unittest:in name set value "List of 3 items, ascending"
function unittest:api/v1/test_case/setup
function call_stack:push
data modify storage call_stack: call.arg0 set value [111,222,333]
data modify storage call_stack: call.arg1 set value [111,222,333]
data modify storage call_stack: call.arg2 set value 200
function dt.array:api/split/greater_than
data modify storage unittest:in actual set from storage call_stack: call.return
function call_stack:pop
data modify storage unittest:in expected set value [[222,333],[111]]
function unittest:api/v1/assert/equal
function unittest:api/v1/test_case/teardown

function unittest:api/v1/test_suite/teardown