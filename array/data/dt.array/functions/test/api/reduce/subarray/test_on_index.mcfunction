function unittest:api/config/enable/detailed_results
function unittest:api/test_suite/setup
data modify storage call_stack: this.name set value "Test on_index"




function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "Empty list"
data modify storage call_stack: call.arg0 set value []
data modify storage call_stack: call.arg1 set value 2
function dt.array:api/reduce/subarray/on_index
data modify storage call_stack: call.actual set from storage call_stack: call.return
data modify storage call_stack: call.expected set value [[],[]]
function unittest:api/assert/equal
function unittest:api/test_case/teardown



function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "1 item list"
data modify storage call_stack: call.arg0 set value [1]
data modify storage call_stack: call.arg1 set value 0
function dt.array:api/reduce/subarray/on_index
data modify storage call_stack: call.actual set from storage call_stack: call.return
data modify storage call_stack: call.expected set value [[],[1]]
function unittest:api/assert/equal
function unittest:api/test_case/teardown



function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "1 item list, bad index"
data modify storage call_stack: call.arg0 set value [1]
data modify storage call_stack: call.arg1 set value 10
function dt.array:api/reduce/subarray/on_index
data modify storage call_stack: call.actual set from storage call_stack: call.return
data modify storage call_stack: call.expected set value [[1],[]]
function unittest:api/assert/equal
function unittest:api/test_case/teardown

function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "Odd split"
data modify storage call_stack: call.arg0 set value [1,2,3,4,5]
data modify storage call_stack: call.arg1 set value 2
function dt.array:api/reduce/subarray/on_index
data modify storage call_stack: call.actual set from storage call_stack: call.return
data modify storage call_stack: call.expected set value [[1,2],[3,4,5]]
function unittest:api/assert/equal
function unittest:api/test_case/teardown


function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "Even split"
data modify storage call_stack: call.arg0 set value [1,2,3,4,5,6]
data modify storage call_stack: call.arg1 set value 3
function dt.array:api/reduce/subarray/on_index
data modify storage call_stack: call.actual set from storage call_stack: call.return
data modify storage call_stack: call.expected set value [[1,2,3],[4,5,6]]
function unittest:api/assert/equal
function unittest:api/test_case/teardown





function unittest:api/test_suite/teardown