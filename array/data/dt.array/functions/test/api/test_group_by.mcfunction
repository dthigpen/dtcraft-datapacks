# function unittest:api/config/enable/detailed_results
function unittest:api/test_suite/setup
data modify storage call_stack: this.name set value "Test group by"

function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "Test 1"
data modify storage call_stack: call.arg0 set value [1,1,22,22,22,3]
data modify storage call_stack: call.arg1 set value [11,111,222,22,2,3333]
function dt.array:api/map/key_value/from_keys_and_values
function call_stack:pipe
function dt.array:api/group_by
function call_stack:pipe
function dt.array:api/map/key_value/subarray/to_values
data modify storage call_stack: call.actual set from storage call_stack: call.return

data modify storage call_stack: call.expected set value [[11,111],[222,22,2],[3333]]
function unittest:api/assert/equal
function unittest:api/test_case/teardown

function unittest:api/test_suite/teardown