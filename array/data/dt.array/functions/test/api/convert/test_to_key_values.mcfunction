data modify storage unittest:in name set value "array to_key_values"
function unittest:api/test_suite/setup

data modify storage unittest:in name set value "empty list"
function unittest:api/test_case/setup
data modify storage unittest:in expected set value []
function call_stack:push
data modify storage call_stack: call.arg0 set value []
function dt.array:api/convert/to_key_values
data modify storage unittest:in actual set from storage call_stack: call.result
function call_stack:pop
function unittest:api/assert/equal
function unittest:api/test_case/teardown

data modify storage unittest:in name set value "list of 1"
function unittest:api/test_case/setup
data modify storage unittest:in expected set value [{key:1,value:"foo"}]
function call_stack:push
data modify storage call_stack: call.arg0 set value ["foo"]
function dt.array:api/convert/to_key_values
data modify storage unittest:in actual set from storage call_stack: call.result
function call_stack:pop
function unittest:api/assert/equal
function unittest:api/test_case/teardown


data modify storage unittest:in name set value "list of 3"
function unittest:api/test_case/setup
data modify storage unittest:in expected set value [{key:1,value:"foo"},{key:2,value:"bar"},{key:3,value:"!!!"}]
function call_stack:push
data modify storage call_stack: call.arg0 set value ["foo","bar","!!!"]
function dt.array:api/convert/to_key_values
data modify storage unittest:in actual set from storage call_stack: call.result
function call_stack:pop
function unittest:api/assert/equal
function unittest:api/test_case/teardown


function unittest:api/test_suite/teardown