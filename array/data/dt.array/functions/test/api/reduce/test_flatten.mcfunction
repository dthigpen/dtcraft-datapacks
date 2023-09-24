function unittest:api/test_suite/setup
data modify storage call_stack: this.name set value "Test reduce/flatten"


function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "Empty list"

data modify storage call_stack: call.arg0 set value []
function dt.array:api/reduce/flatten
data modify storage call_stack: call.actual set from storage call_stack: call.return
data modify storage call_stack: call.expected set value []
function unittest:api/assert/equal
function unittest:api/test_case/teardown

function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "Test flatten"

data modify storage call_stack: call.arg0 set value [[1,2],[3],[4],[5,6,7]]
function dt.array:api/reduce/flatten
data modify storage call_stack: call.actual set from storage call_stack: call.return
data modify storage call_stack: call.expected set value [1,2,3,4,5,6,7]
function unittest:api/assert/equal
function unittest:api/test_case/teardown
function unittest:api/test_suite/teardown