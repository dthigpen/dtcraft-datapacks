data modify storage unittest:in name set value "Unique"
function unittest:api/test_suite/setup


data modify storage unittest:in name set value "Already unique ints"
function unittest:api/test_case/setup
data modify storage unittest:in expected set value [1,2,3,4,5]
function call_stack:push
data modify storage call_stack: call.arg0 set value [1,2,3,4,5]
function dt.array:api/unique
data modify storage unittest:in actual set from storage call_stack: call.return
function call_stack:pop
function unittest:api/assert/equal
function unittest:api/test_case/teardown


data modify storage unittest:in name set value "Already unique objects"
function unittest:api/test_case/setup
data modify storage unittest:in expected set value [{foo:true, bar:false},{foo:"bar"}]
function call_stack:push
data modify storage call_stack: call.arg0 set value [{foo:true, bar:false},{foo:"bar"}]
function dt.array:api/unique
data modify storage unittest:in actual set from storage call_stack: call.return
function call_stack:pop
function unittest:api/assert/equal
function unittest:api/test_case/teardown

data modify storage unittest:in name set value "Non-unique ints"
function unittest:api/test_case/setup
data modify storage unittest:in expected set value [1,2,5,3,4]
function call_stack:push
data modify storage call_stack: call.arg0 set value [1,2,1, 5, 5, 5, 3,4,5]
function dt.array:api/unique
data modify storage unittest:in actual set from storage call_stack: call.return
function call_stack:pop
function unittest:api/assert/equal
function unittest:api/test_case/teardown

function unittest:api/test_suite/teardown