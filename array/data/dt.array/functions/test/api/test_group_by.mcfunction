# function unittest:api/config/enable/detailed_results
data modify storage unittest:in name set value "Test group by"
function unittest:api/v1/test_suite/setup

data modify storage unittest:in name set value "Test 1"
function unittest:api/v1/test_case/setup
function call_stack:push
data modify storage call_stack: call.arg0 set value [1,1,22,22,22,3]
data modify storage call_stack: call.arg1 set value [11,111,222,22,2,3333]
function dt.array:api/map/key_value/from_keys_and_values
function call_stack:pipe
function dt.array:api/group_by
function call_stack:pipe
function dt.array:api/map/key_value/subarray/to_values
data modify storage unittest:in actual set from storage call_stack: call.return

function call_stack:pop
data modify storage unittest:in expected set value [[11,111],[222,22,2],[3333]]
function unittest:api/v1/assert/equal
function unittest:api/v1/test_case/teardown

function unittest:api/v1/test_suite/teardown