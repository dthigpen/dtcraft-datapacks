#function unittest:api/config/enable/detailed_results
data modify storage unittest:in name set value "Test insert"
function unittest:api/test_suite/setup


data modify storage unittest:in name set value "Test 1"
function unittest:api/test_case/setup
function call_stack:push
data modify storage call_stack: call.arg0 set value [{id:"minecraft:feather",Count:1b,Slot:0b}]
function call_stack:pop
data modify storage unittest:in expected set value ExpectedValue
function unittest:api/assert/equal
function unittest:api/test_case/teardown




function unittest:api/test_suite/teardown