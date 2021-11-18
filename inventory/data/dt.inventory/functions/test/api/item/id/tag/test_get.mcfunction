data modify storage unittest:in name set value "Test Item Id Get"
function unittest:api/test_suite/setup

data modify storage unittest:in name set value "Test assign correct id"
function unittest:api/test_case/setup

data modify storage call_stack: call.arg0 set value {id:"minecraft:slime_ball",Count:1b,Slot:9b}
function dt.inventory:api/item/id/tag/get
data modify storage unittest:in actual set from storage call_stack: call.return

data modify storage unittest:in expected set value {id:"minecraft:slime_ball",Count:1b,Slot:9b,tag:{dt:{id:793}}}
function unittest:api/assert/equal
function unittest:api/test_case/teardown


function unittest:api/test_suite/teardown