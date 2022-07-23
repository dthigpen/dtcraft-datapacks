function unittest:api/test_suite/setup
data modify storage call_stack: this.name set value "array n_array_of"


function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "empty list"
data modify storage call_stack: call.arg0 set value []
data modify storage call_stack: call.arg1 set value 3
function dt.array:api/index_of
data modify storage call_stack: call.actual set from storage call_stack: call.return
data modify storage call_stack: call.expected set value -1
function unittest:api/assert/equal
function unittest:api/test_case/teardown


function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "found in list"
data modify storage call_stack: call.arg0 set value [1,2,3,4,5,6]
data modify storage call_stack: call.arg1 set value 2
function dt.array:api/index_of
data modify storage call_stack: call.actual set from storage call_stack: call.return
data modify storage call_stack: call.expected set value 1
function unittest:api/assert/equal
function unittest:api/test_case/teardown


function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "not found in list"
data modify storage call_stack: call.arg0 set value [1,2,3,4,5,6]
data modify storage call_stack: call.arg1 set value 20
function dt.array:api/index_of
data modify storage call_stack: call.actual set from storage call_stack: call.return
data modify storage call_stack: call.expected set value -1
function unittest:api/assert/equal
function unittest:api/test_case/teardown

function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "not found in list 2"
data modify storage call_stack: call.arg0 set value [[22b,23b],[3b]]
data modify storage call_stack: call.arg1 set value 2b
function dt.array:api/index_of
data modify storage call_stack: call.actual set from storage call_stack: call.return
data modify storage call_stack: call.expected set value -1
function unittest:api/assert/equal
function unittest:api/test_case/teardown


function unittest:api/test_suite/teardown