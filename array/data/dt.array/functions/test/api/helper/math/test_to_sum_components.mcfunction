function unittest:api/config/enable/detailed_results
function unittest:api/test_suite/setup
data modify storage call_stack: this.name set value "Test to_sum_components"

function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "Test sum greater than max"
data modify storage call_stack: call.arg0 set value 14
data modify storage call_stack: call.arg1 set value 4
function dt.array:api/helper/math/to_sum_components
data modify storage call_stack: call.actual set from storage call_stack: call.return
data modify storage call_stack: call.expected set value [4,4,4,2]
function unittest:api/assert/equal
function unittest:api/test_case/teardown




function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "Test sum equal to max"
data modify storage call_stack: call.arg0 set value 14
data modify storage call_stack: call.arg1 set value 14
function dt.array:api/helper/math/to_sum_components
data modify storage call_stack: call.actual set from storage call_stack: call.return
data modify storage call_stack: call.expected set value [14]
function unittest:api/assert/equal
function unittest:api/test_case/teardown





function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "Test sum less than to max"
data modify storage call_stack: call.arg0 set value 14
data modify storage call_stack: call.arg1 set value 19
function dt.array:api/helper/math/to_sum_components
data modify storage call_stack: call.actual set from storage call_stack: call.return
data modify storage call_stack: call.expected set value [14]
function unittest:api/assert/equal
function unittest:api/test_case/teardown



function unittest:api/test_suite/teardown