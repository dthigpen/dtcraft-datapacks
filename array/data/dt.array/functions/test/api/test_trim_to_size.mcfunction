function unittest:api/test_suite/setup
data modify storage call_stack: this.name set value "array split_half"


function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "empty list"
data modify storage call_stack: call.arg0 set value []
data modify storage call_stack: call.arg1 set value 1
function dt.array:api/trim_to_size
data modify storage call_stack: call.actual set from storage call_stack: call.return
data modify storage call_stack: call.expected set value []
function unittest:api/assert/equal
function unittest:api/test_case/teardown



function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "already at size"
data modify storage call_stack: call.arg0 set value [1]
data modify storage call_stack: call.arg1 set value 1
function dt.array:api/trim_to_size
data modify storage call_stack: call.actual set from storage call_stack: call.return
data modify storage call_stack: call.expected set value [1]
function unittest:api/assert/equal
function unittest:api/test_case/teardown


function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "greater than list size"
data modify storage call_stack: call.arg0 set value [1,2,3]
data modify storage call_stack: call.arg1 set value 5
function dt.array:api/trim_to_size
data modify storage call_stack: call.actual set from storage call_stack: call.return
data modify storage call_stack: call.expected set value [1,2,3]
function unittest:api/assert/equal
function unittest:api/test_case/teardown



function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "less than list size"
data modify storage call_stack: call.arg0 set value [1,2,3]
data modify storage call_stack: call.arg1 set value 1
function dt.array:api/trim_to_size
data modify storage call_stack: call.actual set from storage call_stack: call.return
data modify storage call_stack: call.expected set value [1]
function unittest:api/assert/equal
function unittest:api/test_case/teardown



function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "trim to size 0"
data modify storage call_stack: call.arg0 set value [1,2,3]
data modify storage call_stack: call.arg1 set value 0
function dt.array:api/trim_to_size
data modify storage call_stack: call.actual set from storage call_stack: call.return
data modify storage call_stack: call.expected set value []
function unittest:api/assert/equal
function unittest:api/test_case/teardown



function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "trim to -1"
data modify storage call_stack: call.arg0 set value [1,2,3]
data modify storage call_stack: call.arg1 set value -1
function dt.array:api/trim_to_size
data modify storage call_stack: call.actual set from storage call_stack: call.return
data modify storage call_stack: call.expected set value []
function unittest:api/assert/equal
function unittest:api/test_case/teardown


function unittest:api/test_suite/teardown