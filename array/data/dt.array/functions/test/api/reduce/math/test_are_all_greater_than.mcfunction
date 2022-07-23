
function unittest:api/test_suite/setup
data modify storage call_stack: this.name set value "array all_greater_than"


function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "empty list"
data modify storage call_stack: call.arg0 set value []
data modify storage call_stack: call.arg1 set value 0
function dt.array:api/reduce/math/are_all_greater_than
data modify storage call_stack: call.actual set from storage call_stack: call.return
tellraw @p ["test_all_greater_than.mcfunction: ",{"nbt":"call.return","storage":"call_stack:"}]
data modify storage call_stack: call.expected set value true
function unittest:api/assert/equal
function unittest:api/test_case/teardown

function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "good"
data modify storage call_stack: call.arg0 set value [1,2,3,4,5]
data modify storage call_stack: call.arg1 set value 0
function dt.array:api/reduce/math/are_all_greater_than
data modify storage call_stack: call.actual set from storage call_stack: call.return
data modify storage call_stack: call.expected set value true
function unittest:api/assert/equal
function unittest:api/test_case/teardown

function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "list of 1 number"
data modify storage call_stack: call.arg0 set value [0]
data modify storage call_stack: call.arg1 set value 0
function dt.array:api/reduce/math/are_all_greater_than
data modify storage call_stack: call.actual set from storage call_stack: call.return
data modify storage call_stack: call.expected set value false
function unittest:api/assert/equal
function unittest:api/test_case/teardown


function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "list of numbers one 0"
data modify storage call_stack: call.arg0 set value [8,4,0,3,9]
data modify storage call_stack: call.arg1 set value 0
function dt.array:api/reduce/math/are_all_greater_than
tellraw @p ["test_all_greater_than.mcfunction: ",{"nbt":"call.return","storage":"call_stack:"}]
data modify storage call_stack: call.actual set from storage call_stack: call.return
data modify storage call_stack: call.expected set value false
function unittest:api/assert/equal
function unittest:api/test_case/teardown


function unittest:api/test_suite/teardown