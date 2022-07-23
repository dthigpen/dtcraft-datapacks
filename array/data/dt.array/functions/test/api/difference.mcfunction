# function unittest:api/config/enable/detailed_results
function unittest:api/test_suite/setup
data modify storage call_stack: this.name set value "array difference"


function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "b_subset_a"
data modify storage call_stack: call.arg0 set value [1,2,3,4,5]
data modify storage call_stack: call.arg1 set value [2,5]
function dt.array:api/difference
data modify storage call_stack: call.actual set from storage call_stack: call.return
data modify storage call_stack: call.expected set value [1,3,4]
function unittest:api/assert/equal
function unittest:api/test_case/teardown



function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "a_subset_b"
data modify storage call_stack: call.arg0 set value [2,5]
data modify storage call_stack: call.arg1 set value [1,2,3,4,5]
function dt.array:api/difference
data modify storage call_stack: call.actual set from storage call_stack: call.return
data modify storage call_stack: call.expected set value []
function unittest:api/assert/equal
function unittest:api/test_case/teardown



function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "between_objects"
data modify storage call_stack: call.arg0 set value [{id:"a", value:123},{id:"c", value:456},{id:"a", value:123},{id:"d", value:789}]
data modify storage call_stack: call.arg1 set value [{id:"a", value:123}]
function dt.array:api/difference
data modify storage call_stack: call.actual set from storage call_stack: call.return
data modify storage call_stack: call.expected set value [{id:"c", value:456},{id:"d", value:789}]
function unittest:api/assert/equal
function unittest:api/test_case/teardown



function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "first_is_empty_list"
data modify storage call_stack: call.arg0 set value []
data modify storage call_stack: call.arg1 set value [2,5]
function dt.array:api/difference
data modify storage call_stack: call.actual set from storage call_stack: call.return
data modify storage call_stack: call.expected set value []
function unittest:api/assert/equal
function unittest:api/test_case/teardown



function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "second_is_empty_list"
data modify storage call_stack: call.arg0 set value [2,5]
data modify storage call_stack: call.arg1 set value []
function dt.array:api/difference
data modify storage call_stack: call.actual set from storage call_stack: call.return
data modify storage call_stack: call.expected set value [2,5]
function unittest:api/assert/equal
function unittest:api/test_case/teardown


function unittest:api/test_suite/teardown
