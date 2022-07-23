# function unittest:api/config/enable/detailed_results
function unittest:api/test_suite/setup
data modify storage call_stack: this.name set value "Test add_with_max"

function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "Test over max"
data modify storage call_stack: call.arg0 set value 2
data modify storage call_stack: call.arg1 set value 15
data modify storage call_stack: call.arg2 set value 16
function dt.array:api/helper/math/add_with_max
data modify storage call_stack: call.actual set from storage call_stack: call.return
data modify storage call_stack: call.expected set value [16,1]
function unittest:api/assert/equal
function unittest:api/test_case/teardown



function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "Test below max"
data modify storage call_stack: call.arg0 set value 9
data modify storage call_stack: call.arg1 set value 1
data modify storage call_stack: call.arg2 set value 16
function dt.array:api/helper/math/add_with_max
data modify storage call_stack: call.actual set from storage call_stack: call.return
data modify storage call_stack: call.expected set value [10]
function unittest:api/assert/equal
function unittest:api/test_case/teardown




function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "Test at max"
data modify storage call_stack: call.arg0 set value 9
data modify storage call_stack: call.arg1 set value 7
data modify storage call_stack: call.arg2 set value 16
function dt.array:api/helper/math/add_with_max
data modify storage call_stack: call.actual set from storage call_stack: call.return
data modify storage call_stack: call.expected set value [16]
function unittest:api/assert/equal
function unittest:api/test_case/teardown



function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "Test already over max"
data modify storage call_stack: call.arg0 set value 19
data modify storage call_stack: call.arg1 set value 7
data modify storage call_stack: call.arg2 set value 16
function dt.array:api/helper/math/add_with_max
data modify storage call_stack: call.actual set from storage call_stack: call.return
data modify storage call_stack: call.expected set value [16,10]
function unittest:api/assert/equal
function unittest:api/test_case/teardown



function unittest:api/test_suite/teardown