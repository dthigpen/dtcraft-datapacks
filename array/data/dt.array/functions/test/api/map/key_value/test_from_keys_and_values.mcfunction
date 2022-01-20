# function unittest:api/config/enable/detailed_results
data modify storage unittest:in name set value "array to_key_values"
function unittest:api/test_suite/setup

data modify storage unittest:in name set value "empty list"
function unittest:api/test_case/setup
data modify storage unittest:in expected set value []
function call_stack:push
data modify storage call_stack: call.arg0 set value []
data modify storage call_stack: call.arg1 set value []
function dt.array:api/map/key_value/from_keys_and_values
data modify storage unittest:in actual set from storage call_stack: call.return
function call_stack:pop
function unittest:api/assert/equal
function unittest:api/test_case/teardown

data modify storage unittest:in name set value "list of 1"
function unittest:api/test_case/setup
data modify storage unittest:in expected set value [{key:1,value:"foo"}]
function call_stack:push
data modify storage call_stack: call.arg0 set value [1]
data modify storage call_stack: call.arg1 set value ["foo"]
function dt.array:api/map/key_value/from_keys_and_values
data modify storage unittest:in actual set from storage call_stack: call.return
function call_stack:pop
function unittest:api/assert/equal
function unittest:api/test_case/teardown


data modify storage unittest:in name set value "list of 3"
function unittest:api/test_case/setup
data modify storage unittest:in expected set value [{key:1,value:"foo"},{key:2,value:"bar"},{key:3,value:"!!!"}]
function call_stack:push
data modify storage call_stack: call.arg0 set value [1,2,3]
data modify storage call_stack: call.arg1 set value ["foo","bar","!!!"]
function dt.array:api/map/key_value/from_keys_and_values
data modify storage unittest:in actual set from storage call_stack: call.return
function call_stack:pop
function unittest:api/assert/equal
function unittest:api/test_case/teardown


data modify storage unittest:in name set value "custom keys"
function unittest:api/test_case/setup
data modify storage unittest:in expected set value [{key:99,value:"foo"},{key:4,value:"bar"},{key:77,value:"!!!"}]
function call_stack:push
data modify storage call_stack: call.arg0 set value [99, 4, 77]
data modify storage call_stack: call.arg1 set value ["foo","bar","!!!"]
function dt.array:api/map/key_value/from_keys_and_values
data modify storage unittest:in actual set from storage call_stack: call.return
function call_stack:pop
function unittest:api/assert/equal
function unittest:api/test_case/teardown

data modify storage unittest:in name set value "custom keys not enough"
function unittest:api/test_case/setup
data modify storage unittest:in expected set value [{key:99,value:"foo"},{key:4,value:"bar"}]
function call_stack:push
data modify storage call_stack: call.arg0 set value [99, 4]
data modify storage call_stack: call.arg1 set value ["foo","bar","!!!"]
function dt.array:api/map/key_value/from_keys_and_values
data modify storage unittest:in actual set from storage call_stack: call.return
function call_stack:pop
function unittest:api/assert/equal
function unittest:api/test_case/teardown


function unittest:api/test_suite/teardown