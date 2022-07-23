function unittest:api/config/enable/detailed_results
function unittest:api/test_suite/setup
data modify storage call_stack: this.name set value "Test split_greater_than"

function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "List of 0 items"
data modify storage call_stack: call.arg0 set value []
data modify storage call_stack: call.arg1 set value []
data modify storage call_stack: call.arg2 set value 26
function dt.array:api/split/greater_than
data modify storage call_stack: call.actual set from storage call_stack: call.return
data modify storage call_stack: call.expected set value [[],[]]
function unittest:api/assert/equal
function unittest:api/test_case/teardown



function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "List of 1 item, greater than"
data modify storage call_stack: call.arg0 set value [123]
data modify storage call_stack: call.arg1 set value [123]
data modify storage call_stack: call.arg2 set value 26
function dt.array:api/split/greater_than
data modify storage call_stack: call.actual set from storage call_stack: call.return
data modify storage call_stack: call.expected set value [[123],[]]
function unittest:api/assert/equal
function unittest:api/test_case/teardown

function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "List of 1 item, not greater than"
data modify storage call_stack: call.arg0 set value [1]
data modify storage call_stack: call.arg1 set value [1]
data modify storage call_stack: call.arg2 set value 26
function dt.array:api/split/greater_than
data modify storage call_stack: call.actual set from storage call_stack: call.return
data modify storage call_stack: call.expected set value [[],[1]]
function unittest:api/assert/equal
function unittest:api/test_case/teardown




function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "List of 2 items, descending"
data modify storage call_stack: call.arg0 set value [123,1]
data modify storage call_stack: call.arg1 set value [123,1]
data modify storage call_stack: call.arg2 set value 26
function dt.array:api/split/greater_than
data modify storage call_stack: call.actual set from storage call_stack: call.return
data modify storage call_stack: call.expected set value [[123],[1]]
function unittest:api/assert/equal
function unittest:api/test_case/teardown



function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "List of 3 items, ascending"
data modify storage call_stack: call.arg0 set value [111,222,333]
data modify storage call_stack: call.arg1 set value [111,222,333]
data modify storage call_stack: call.arg2 set value 200
function dt.array:api/split/greater_than
data modify storage call_stack: call.actual set from storage call_stack: call.return
data modify storage call_stack: call.expected set value [[222,333],[111]]
function unittest:api/assert/equal
function unittest:api/test_case/teardown

function unittest:api/test_suite/teardown