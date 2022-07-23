function unittest:api/config/enable/detailed_results
function unittest:api/test_suite/setup
data modify storage call_stack: this.name set value "Test math/add"


function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "Test 1"
data modify storage call_stack: call.arg0 set value [-2,-1,0,1]
data modify storage call_stack: call.arg1 set value 1
function dt.array:api/map/math/add
data modify storage call_stack: call.actual set from storage call_stack: call.return
data modify storage call_stack: call.expected set value [-1,0,1,2]
function unittest:api/assert/equal
function unittest:api/test_case/teardown



function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "Test 2, bytes input"
data modify storage call_stack: call.arg0 set value [0b,1b, 4b]
data modify storage call_stack: call.arg1 set value 10b
function dt.array:api/map/math/add
data modify storage call_stack: call.actual set from storage call_stack: call.return
data modify storage call_stack: call.expected set value [10,11,14]
function unittest:api/assert/equal
function unittest:api/test_case/teardown

function unittest:api/test_suite/teardown