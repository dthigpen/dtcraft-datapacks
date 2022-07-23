# function unittest:api/config/enable/detailed_results
function unittest:api/test_suite/setup
data modify storage call_stack: this.name set value "Test enumerate"


function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "Test positive range"
data modify storage call_stack: call.arg0 set value 0
data modify storage call_stack: call.arg1 set value 4
function dt.array:api/enumerate
data modify storage call_stack: call.actual set from storage call_stack: call.return
data modify storage call_stack: call.expected set value [0,1,2,3]
function unittest:api/assert/equal
function unittest:api/test_case/teardown




function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "Test positive range, step 2"
data modify storage call_stack: call.arg0 set value 0
data modify storage call_stack: call.arg1 set value 7
data modify storage call_stack: call.arg2 set value 2
function dt.array:api/enumerate
data modify storage call_stack: call.actual set from storage call_stack: call.return
data modify storage call_stack: call.expected set value [0,2,4,6]
function unittest:api/assert/equal
function unittest:api/test_case/teardown


function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "Test negative range"
data modify storage call_stack: call.arg0 set value 0
data modify storage call_stack: call.arg1 set value -3
data modify storage call_stack: call.arg2 set value -1
function dt.array:api/enumerate
data modify storage call_stack: call.actual set from storage call_stack: call.return
data modify storage call_stack: call.expected set value [0,-1,-2]
function unittest:api/assert/equal
function unittest:api/test_case/teardown



function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "Test out of range 1"
data modify storage call_stack: call.arg0 set value 0
data modify storage call_stack: call.arg1 set value 0
data modify storage call_stack: call.arg2 set value 1
function dt.array:api/enumerate
data modify storage call_stack: call.actual set from storage call_stack: call.return
data modify storage call_stack: call.expected set value []
function unittest:api/assert/equal
function unittest:api/test_case/teardown



function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "Test out of range 2"
data modify storage call_stack: call.arg0 set value 5
data modify storage call_stack: call.arg1 set value 0
data modify storage call_stack: call.arg2 set value 1
function dt.array:api/enumerate
data modify storage call_stack: call.actual set from storage call_stack: call.return
data modify storage call_stack: call.expected set value []
function unittest:api/assert/equal
function unittest:api/test_case/teardown


function unittest:api/test_suite/teardown