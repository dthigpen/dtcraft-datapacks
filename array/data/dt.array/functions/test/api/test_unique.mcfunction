function unittest:api/test_suite/setup
data modify storage call_stack: this.name set value "Unique"


function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "Already unique ints"
data modify storage call_stack: call.arg0 set value [1,2,3,4,5]
function dt.array:api/unique
data modify storage call_stack: call.actual set from storage call_stack: call.return
data modify storage call_stack: call.expected set value [1,2,3,4,5]
function unittest:api/assert/equal
function unittest:api/test_case/teardown


function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "Already unique objects"
data modify storage call_stack: call.arg0 set value [{foo:true, bar:false},{foo:"bar"}]
function dt.array:api/unique
data modify storage call_stack: call.actual set from storage call_stack: call.return
data modify storage call_stack: call.expected set value [{foo:true, bar:false},{foo:"bar"}]
function unittest:api/assert/equal
function unittest:api/test_case/teardown

function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "Non-unique ints"
data modify storage call_stack: call.arg0 set value [1,2,1, 5, 5, 5, 3,4,5]
function dt.array:api/unique
data modify storage call_stack: call.actual set from storage call_stack: call.return
data modify storage call_stack: call.expected set value [1,2,5,3,4]
function unittest:api/assert/equal
function unittest:api/test_case/teardown

function unittest:api/test_suite/teardown