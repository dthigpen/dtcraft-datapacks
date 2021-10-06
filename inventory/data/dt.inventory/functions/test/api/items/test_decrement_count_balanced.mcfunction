data modify storage unittest:in name set value "Test decrement count balanced"
function unittest:api/test_suite/setup

data modify storage unittest:in name set value "remove count in range"
function unittest:api/test_case/setup

function call_stack:push
data modify storage call_stack: call.arg0 set value [{id:"minecraft:stone",Count:10b, Slot:0b},{id:"minecraft:stone",Count:8b, Slot:2b}] 
data modify storage call_stack: call.arg1 set value 2
function dt.inventory:api/items/decrement_count_balanced
data modify storage unittest:in actual set from storage call_stack: call.return
function call_stack:pop
data modify storage unittest:in expected set value {removed_items: [{id:"minecraft:stone",Count:2b, Slot:0b},{id:"minecraft:stone",Count:2b, Slot:2b}], remaining_items: [{id:"minecraft:stone",Count:8b, Slot:0b},{id:"minecraft:stone",Count:6b, Slot:2b}]}
function unittest:api/assert/equal
function unittest:api/test_case/teardown

data modify storage unittest:in name set value "remove count out of range"
function unittest:api/test_case/setup

function call_stack:push
data modify storage call_stack: call.arg0 set value [{id:"minecraft:stone",Count:10b, Slot:0b},{id:"minecraft:stone",Count:8b, Slot:2b}] 
data modify storage call_stack: call.arg1 set value 9
function dt.inventory:api/items/decrement_count_balanced
data modify storage unittest:in actual set from storage call_stack: call.return
tellraw @p ["test_decrement_count_balanced.mcfunction: ",{"nbt":"call.return","storage":"call_stack:"}]
function call_stack:pop
function unittest:api/assert/is_not_set
function unittest:api/test_case/teardown


function unittest:api/test_suite/teardown