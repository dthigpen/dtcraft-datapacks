function unittest:api/test_suite/setup
data modify storage call_stack: this.name set value "array sum"


function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "empty list"
data modify storage call_stack: call.arg0 set value []
function dt.array:api/reduce/math/sum
data modify storage call_stack: call.actual set from storage call_stack: call.return
data modify storage call_stack: call.expected set value 0
function unittest:api/assert/equal
function unittest:api/test_case/teardown

function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "good"
data modify storage call_stack: call.arg0 set value [1,2,3,4,5]
function dt.array:api/reduce/math/sum
data modify storage call_stack: call.actual set from storage call_stack: call.return
data modify storage call_stack: call.expected set value 15
function unittest:api/assert/equal
function unittest:api/test_case/teardown

function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "list of 0s"
data modify storage call_stack: call.arg0 set value [0,0,0,0]
function dt.array:api/reduce/math/sum
data modify storage call_stack: call.actual set from storage call_stack: call.return
data modify storage call_stack: call.expected set value 0
function unittest:api/assert/equal
function unittest:api/test_case/teardown


function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "list of 1 number"
data modify storage call_stack: call.arg0 set value [9]
function dt.array:api/reduce/math/sum
data modify storage call_stack: call.actual set from storage call_stack: call.return
data modify storage call_stack: call.expected set value 9
function unittest:api/assert/equal
function unittest:api/test_case/teardown


function unittest:api/test_suite/teardown