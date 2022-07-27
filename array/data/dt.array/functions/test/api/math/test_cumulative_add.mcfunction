function unittest:api/config/enable/detailed_results
function unittest:api/test_suite/setup
data modify storage call_stack: this.name set value "Test Cumulative Add"

function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "Test 1"
data modify storage call_stack: call.arg0 set value [16,2,4,9]
data modify storage call_stack: call.arg1 set value 15
data modify storage call_stack: call.arg2 set value 16
function dt.array:api/reduce/math/cumulative_add
data modify storage call_stack: call.actual set from storage call_stack: call.return
data modify storage call_stack: call.expected set value [16,16,5,9]
function unittest:api/assert/equal
function unittest:api/test_case/teardown

function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "Test over"
data modify storage call_stack: call.arg0 set value [16,15,14]
data modify storage call_stack: call.arg1 set value 5
data modify storage call_stack: call.arg2 set value 16
function dt.array:api/reduce/math/cumulative_add
data modify storage call_stack: call.actual set from storage call_stack: call.return
data modify storage call_stack: call.expected set value [16,16,16,2]
function unittest:api/assert/equal
function unittest:api/test_case/teardown



function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "Test over 2"
data modify storage call_stack: call.arg0 set value [16,19,14]
data modify storage call_stack: call.arg1 set value 5
data modify storage call_stack: call.arg2 set value 16
function dt.array:api/reduce/math/cumulative_add
data modify storage call_stack: call.actual set from storage call_stack: call.return
data modify storage call_stack: call.expected set value [16,16,16,6]
function unittest:api/assert/equal
function unittest:api/test_case/teardown





function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "Test over bytes"
data modify storage call_stack: call.arg0 set value [60b]
data modify storage call_stack: call.arg1 set value 5b
data modify storage call_stack: call.arg2 set value 64b
function dt.array:api/reduce/math/cumulative_add
data modify storage call_stack: call.actual set from storage call_stack: call.return
data modify storage call_stack: call.expected set value [64, 1]
function unittest:api/assert/equal
function unittest:api/test_case/teardown


function unittest:api/test_suite/teardown