# function unittest:api/config/enable/detailed_results
data modify storage unittest:in name set value "Test reduce/subarray/equal"
function unittest:api/v1/test_suite/setup

data modify storage unittest:in name set value "Non-empty array"
function unittest:api/v1/test_case/setup
function call_stack:push
data modify storage call_stack: call.arg0 set value [1,2,2,4,2]
data modify storage call_stack: call.arg1 set value ["one","two","TWO","Four",Two]
function dt.array:api/map/key_value/from_keys_and_values
function call_stack:pipe
data modify storage call_stack: call.arg1 set value 2
function dt.array:api/reduce/subarray/equal_to
data modify storage unittest:in actual set from storage call_stack: call.return
function call_stack:pop
data modify storage unittest:in expected set value [[{key:2,value:"two"},{key:2,value:"TWO"},{key:2,value:"Two"}],[{key:1,value:"one"},{key:4,value:"Four"}]]
function unittest:api/v1/assert/equal
function unittest:api/v1/test_case/teardown


data modify storage unittest:in name set value "Empty array"
function unittest:api/v1/test_case/setup
function call_stack:push
data modify storage call_stack: call.arg0 set value []
data modify storage call_stack: call.arg1 set value 2
function dt.array:api/reduce/subarray/equal_to
data modify storage unittest:in actual set from storage call_stack: call.return
function call_stack:pop
data modify storage unittest:in expected set value [[],[]]
function unittest:api/v1/assert/equal
function unittest:api/v1/test_case/teardown




data modify storage unittest:in name set value "Non-empty array, limit 1"
function unittest:api/v1/test_case/setup
function call_stack:push
data modify storage call_stack: call.arg0 set value [1,2,2,4,2]
data modify storage call_stack: call.arg1 set value ["one","two","TWO","Four",Two]
function dt.array:api/map/key_value/from_keys_and_values
function call_stack:pipe
data modify storage call_stack: call.arg1 set value 2
data modify storage call_stack: call.arg2 set value 1
function dt.array:api/reduce/subarray/equal_to
data modify storage unittest:in actual set from storage call_stack: call.return
function call_stack:pop
data modify storage unittest:in expected set value [[{key:2,value:"two"}],[{key:1,value:"one"}]]
function unittest:api/v1/assert/equal
function unittest:api/v1/test_case/teardown


function unittest:api/v1/test_suite/teardown