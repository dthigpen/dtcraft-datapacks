function unittest:api/test_suite/setup
data modify storage call_stack: this.name set value "array remove_n"


function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "empty list"
data modify storage call_stack: call.arg0 set value []
data modify storage call_stack: call.arg1 set value 1
function dt.array:api/remove_n
data modify storage call_stack: call.actual set from storage call_stack: call.return
data modify storage call_stack: call.expected set value []
function unittest:api/assert/equal
function unittest:api/test_case/teardown


function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "remove 0"
data modify storage call_stack: call.arg0 set value [1,2,3]
data modify storage call_stack: call.arg1 set value 0
function dt.array:api/remove_n
data modify storage call_stack: call.actual set from storage call_stack: call.return
data modify storage call_stack: call.expected set value [1,2,3]
function unittest:api/assert/equal
function unittest:api/test_case/teardown



function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "remove 2"
data modify storage call_stack: call.arg0 set value [1,2,3]
data modify storage call_stack: call.arg1 set value 2
function dt.array:api/remove_n
data modify storage call_stack: call.actual set from storage call_stack: call.return
data modify storage call_stack: call.expected set value [1]
function unittest:api/assert/equal
function unittest:api/test_case/teardown

function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "remove extra"
data modify storage call_stack: call.arg0 set value [1,2,3]
data modify storage call_stack: call.arg1 set value 5
function dt.array:api/remove_n
data modify storage call_stack: call.actual set from storage call_stack: call.return
data modify storage call_stack: call.expected set value []
function unittest:api/assert/equal
function unittest:api/test_case/teardown



function unittest:api/test_suite/teardown