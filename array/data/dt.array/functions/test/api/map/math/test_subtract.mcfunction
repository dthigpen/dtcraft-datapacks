function unittest:api/test_suite/setup
data modify storage call_stack: this.name set value "array subtract"


function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "empty list"
data modify storage call_stack: call.arg0 set value []
data modify storage call_stack: call.arg1 set value 0
function dt.array:api/map/math/subtract
data modify storage call_stack: call.actual set from storage call_stack: call.return
tellraw @p ["test_subtract.mcfunction: ",{"nbt":"call.return","storage":"call_stack:"}]
data modify storage call_stack: call.expected set value []
function unittest:api/assert/equal
function unittest:api/test_case/teardown

function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "good"
data modify storage call_stack: call.arg0 set value [1,2,3,4,5]
data modify storage call_stack: call.arg1 set value 1
function dt.array:api/map/math/subtract
data modify storage call_stack: call.actual set from storage call_stack: call.return
data modify storage call_stack: call.expected set value [0,1,2,3,4]
function unittest:api/assert/equal
function unittest:api/test_case/teardown

function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "list of 1 number"
data modify storage call_stack: call.arg0 set value [9]
data modify storage call_stack: call.arg1 set value 0
function dt.array:api/map/math/subtract
data modify storage call_stack: call.actual set from storage call_stack: call.return
data modify storage call_stack: call.expected set value [9]
function unittest:api/assert/equal
function unittest:api/test_case/teardown


function unittest:api/test_suite/teardown