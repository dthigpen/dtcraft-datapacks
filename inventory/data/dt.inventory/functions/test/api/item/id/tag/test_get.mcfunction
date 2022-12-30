function unittest:api/test_suite/setup
data modify storage call_stack: this.name set value "Test Item Id Get"

function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "Test assign correct id"

data modify storage call_stack: call.arg0 set value {id:"minecraft:slime_ball",Count:1b,Slot:9b}
function dt.inventory:api/item/id/tag/get
data modify storage call_stack: call.actual set from storage call_stack: call.return

data modify storage call_stack: call.expected set value {id:"minecraft:slime_ball",Count:1b,Slot:9b,tag:{dt:{id:831}}}
function unittest:api/assert/equal
function unittest:api/test_case/teardown


function unittest:api/test_suite/teardown