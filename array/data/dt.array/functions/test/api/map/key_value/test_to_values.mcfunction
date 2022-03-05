# function unittest:api/config/enable/detailed_results
data modify storage unittest:in name set value "key_value/to_values"
function unittest:api/v1/test_suite/setup

data modify storage unittest:in name set value "empty list"
function unittest:api/v1/test_case/setup
data modify storage unittest:in expected set value []
function call_stack:push
data modify storage call_stack: call.arg0 set value []
function dt.array:api/map/key_value/to_values
data modify storage unittest:in actual set from storage call_stack: call.return
function call_stack:pop
function unittest:api/v1/assert/equal
function unittest:api/v1/test_case/teardown

data modify storage unittest:in name set value "list of 1"
function unittest:api/v1/test_case/setup
data modify storage unittest:in expected set value ["foo"]
function call_stack:push
data modify storage call_stack: call.arg0 set value [{key:1,value:"foo"}]
function dt.array:api/map/key_value/to_values
data modify storage unittest:in actual set from storage call_stack: call.return
function call_stack:pop
function unittest:api/v1/assert/equal
function unittest:api/v1/test_case/teardown


data modify storage unittest:in name set value "list of 3"
function unittest:api/v1/test_case/setup
data modify storage unittest:in expected set value ["foo","bar","!!!"]
function call_stack:push
data modify storage call_stack: call.arg0 set value [{key:1,value:"foo"},{key:2,value:"bar"},{key:3,value:"!!!"}]
function dt.array:api/map/key_value/to_values
data modify storage unittest:in actual set from storage call_stack: call.return
function call_stack:pop
function unittest:api/v1/assert/equal
function unittest:api/v1/test_case/teardown

function unittest:api/v1/test_suite/teardown