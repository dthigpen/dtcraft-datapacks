# function unittest:api/config/enable/detailed_results
function unittest:api/test_suite/setup
data modify storage call_stack: this.name set value "array n_array_of"


function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "good"
data modify storage call_stack: call.arg0 set value 3
data modify storage call_stack: call.arg1 set value 42
function dt.array:api/n_array_of
data modify storage call_stack: call.actual set from storage call_stack: call.return
data modify storage call_stack: call.expected set value [42,42,42]
function unittest:api/assert/equal
function unittest:api/test_case/teardown



function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "n_is_-1"
data modify storage call_stack: call.arg0 set value -1
data modify storage call_stack: call.arg1 set value 42
function dt.array:api/n_array_of
data modify storage call_stack: call.actual set from storage call_stack: call.return
data modify storage call_stack: call.expected set value []
function unittest:api/assert/equal
function unittest:api/test_case/teardown


function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "n_is_0"
data modify storage call_stack: call.arg0 set value 0
data modify storage call_stack: call.arg1 set value 42
function dt.array:api/n_array_of
data modify storage call_stack: call.actual set from storage call_stack: call.return
data modify storage call_stack: call.expected set value []
function unittest:api/assert/equal
function unittest:api/test_case/teardown


function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "of_objects"
data modify storage call_stack: call.arg0 set value 2
data modify storage call_stack: call.arg1 set value {foo:bar}
function dt.array:api/n_array_of
data modify storage call_stack: call.actual set from storage call_stack: call.return
data modify storage call_stack: call.expected set value [{foo:bar},{foo:bar}]
function unittest:api/assert/equal
function unittest:api/test_case/teardown

function unittest:api/test_suite/teardown