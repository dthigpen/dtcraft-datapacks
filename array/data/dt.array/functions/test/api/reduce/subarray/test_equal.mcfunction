# function unittest:api/config/enable/detailed_results
function unittest:api/test_suite/setup
data modify storage call_stack: this.name set value "Test reduce/subarray/equal"

function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "Non-empty array"
data modify storage call_stack: call.arg0 set value [1,2,2,4,2]
data modify storage call_stack: call.arg1 set value ["one","two","TWO","Four",Two]
function dt.array:api/map/key_value/from_keys_and_values
function call_stack:pipe
data modify storage call_stack: call.arg1 set value 2
function dt.array:api/reduce/subarray/equal_to
data modify storage call_stack: call.actual set from storage call_stack: call.return
data modify storage call_stack: call.expected set value [[{key:2,value:"two"},{key:2,value:"TWO"},{key:2,value:"Two"}],[{key:1,value:"one"},{key:4,value:"Four"}]]
function unittest:api/assert/equal
function unittest:api/test_case/teardown


function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "Empty array"
data modify storage call_stack: call.arg0 set value []
data modify storage call_stack: call.arg1 set value 2
function dt.array:api/reduce/subarray/equal_to
data modify storage call_stack: call.actual set from storage call_stack: call.return
data modify storage call_stack: call.expected set value [[],[]]
function unittest:api/assert/equal
function unittest:api/test_case/teardown




function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "Non-empty array, limit 1"
data modify storage call_stack: call.arg0 set value [1,2,2,4,2]
data modify storage call_stack: call.arg1 set value ["one","two","TWO","Four",Two]
function dt.array:api/map/key_value/from_keys_and_values
function call_stack:pipe
data modify storage call_stack: call.arg1 set value 2
data modify storage call_stack: call.arg2 set value 1
function dt.array:api/reduce/subarray/equal_to
data modify storage call_stack: call.actual set from storage call_stack: call.return
data modify storage call_stack: call.expected set value [[{key:2,value:"two"}],[{key:1,value:"one"}]]
function unittest:api/assert/equal
function unittest:api/test_case/teardown


function unittest:api/test_suite/teardown