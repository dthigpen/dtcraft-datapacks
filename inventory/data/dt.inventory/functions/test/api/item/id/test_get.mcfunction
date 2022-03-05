# function unittest:api/config/enable/detailed_results
data modify storage unittest:in name set value "Test Item Id Get"
function unittest:api/v1/test_suite/setup

data modify storage unittest:in name set value "Test assign correct id"
function unittest:api/v1/test_case/setup

function call_stack:push
data modify storage call_stack: call.arg0 set value {id:"minecraft:slime_ball",Count:1b,Slot:9b}
function dt.inventory:api/item/id/get
data modify storage unittest:in actual set from storage call_stack: call.return

function call_stack:pop

data modify storage unittest:in expected set value 793
function unittest:api/v1/assert/equal
function unittest:api/v1/test_case/teardown


function unittest:api/v1/test_suite/teardown