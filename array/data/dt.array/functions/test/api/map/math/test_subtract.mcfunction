data modify storage unittest:in name set value "array subtract"
function unittest:api/v1/test_suite/setup


data modify storage unittest:in name set value "empty list"
function unittest:api/v1/test_case/setup
data modify storage unittest:in expected set value []
function call_stack:push
data modify storage call_stack: call.arg0 set value []
data modify storage call_stack: call.arg1 set value 0
function dt.array:api/map/math/subtract
data modify storage unittest:in actual set from storage call_stack: call.return
tellraw @p ["test_subtract.mcfunction: ",{"nbt":"call.return","storage":"call_stack:"}]
function call_stack:pop
function unittest:api/v1/assert/equal
function unittest:api/v1/test_case/teardown

data modify storage unittest:in name set value "good"
function unittest:api/v1/test_case/setup
data modify storage unittest:in expected set value [0,1,2,3,4]
function call_stack:push
data modify storage call_stack: call.arg0 set value [1,2,3,4,5]
data modify storage call_stack: call.arg1 set value 1
function dt.array:api/map/math/subtract
data modify storage unittest:in actual set from storage call_stack: call.return
function call_stack:pop
function unittest:api/v1/assert/equal
function unittest:api/v1/test_case/teardown

data modify storage unittest:in name set value "list of 1 number"
function unittest:api/v1/test_case/setup
data modify storage unittest:in expected set value [9]
function call_stack:push
data modify storage call_stack: call.arg0 set value [9]
data modify storage call_stack: call.arg1 set value 0
function dt.array:api/map/math/subtract
data modify storage unittest:in actual set from storage call_stack: call.return
function call_stack:pop
function unittest:api/v1/assert/equal
function unittest:api/v1/test_case/teardown


function unittest:api/v1/test_suite/teardown