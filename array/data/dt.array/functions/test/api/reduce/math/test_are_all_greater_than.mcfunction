
data modify storage unittest:in name set value "array all_greater_than"
function unittest:api/v1/test_suite/setup


data modify storage unittest:in name set value "empty list"
function unittest:api/v1/test_case/setup
data modify storage unittest:in expected set value true
function call_stack:push
data modify storage call_stack: call.arg0 set value []
data modify storage call_stack: call.arg1 set value 0
function dt.array:api/reduce/math/are_all_greater_than
data modify storage unittest:in actual set from storage call_stack: call.return
tellraw @p ["test_all_greater_than.mcfunction: ",{"nbt":"call.return","storage":"call_stack:"}]
function call_stack:pop
function unittest:api/v1/assert/equal
function unittest:api/v1/test_case/teardown

data modify storage unittest:in name set value "good"
function unittest:api/v1/test_case/setup
data modify storage unittest:in expected set value true
function call_stack:push
data modify storage call_stack: call.arg0 set value [1,2,3,4,5]
data modify storage call_stack: call.arg1 set value 0
function dt.array:api/reduce/math/are_all_greater_than
data modify storage unittest:in actual set from storage call_stack: call.return
function call_stack:pop
function unittest:api/v1/assert/equal
function unittest:api/v1/test_case/teardown

data modify storage unittest:in name set value "list of 1 number"
function unittest:api/v1/test_case/setup
data modify storage unittest:in expected set value false
function call_stack:push
data modify storage call_stack: call.arg0 set value [0]
data modify storage call_stack: call.arg1 set value 0
function dt.array:api/reduce/math/are_all_greater_than
data modify storage unittest:in actual set from storage call_stack: call.return
function call_stack:pop
function unittest:api/v1/assert/equal
function unittest:api/v1/test_case/teardown


data modify storage unittest:in name set value "list of numbers one 0"
function unittest:api/v1/test_case/setup
data modify storage unittest:in expected set value false
function call_stack:push
data modify storage call_stack: call.arg0 set value [8,4,0,3,9]
data modify storage call_stack: call.arg1 set value 0
function dt.array:api/reduce/math/are_all_greater_than
tellraw @p ["test_all_greater_than.mcfunction: ",{"nbt":"call.return","storage":"call_stack:"}]
data modify storage unittest:in actual set from storage call_stack: call.return
function call_stack:pop
function unittest:api/v1/assert/equal
function unittest:api/v1/test_case/teardown


function unittest:api/v1/test_suite/teardown