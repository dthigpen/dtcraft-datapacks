# function unittest:api/config/enable/detailed_results
data modify storage unittest:in name set value "Test reduce/subarray/greater_than"
function unittest:api/test_suite/setup


data modify storage unittest:in name set value "Test 1"
function unittest:api/test_case/setup
function call_stack:push
data modify storage call_stack: call.arg0 set value [1,2,3,4,5,6,7]
function dt.array:api/map/key_value/from_values
function call_stack:pipe
data modify storage call_stack: call.arg1 set value 3
function dt.array:api/reduce/subarray/greater_than
tellraw @p ["test_greater_than call.return: ",{"nbt":"call.return","storage":"call_stack:"}]
function call_stack:pipe
function dt.array:api/map/key_value/subarray/to_values
data modify storage unittest:in actual set from storage call_stack: call.return
function call_stack:pop
data modify storage unittest:in expected set value [[4,5,6,7],[1,2,3]]
function unittest:api/assert/equal
function unittest:api/test_case/teardown


function unittest:api/test_suite/teardown