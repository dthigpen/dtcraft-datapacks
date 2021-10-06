data modify storage unittest:in name set value "Test Take"
function unittest:api/test_suite/setup


data modify storage unittest:in name set value "take cumulative 2 stacks success"
function unittest:api/test_case/setup

data modify storage unittest:in expected set value {items:[{id:"minecraft:feather",Count:27b, Slot:1b},{id:"minecraft:stone",Count:5b, Slot:2b}], success:true, remaining_count:0}

function call_stack:push
data modify storage call_stack: call.arg0 set value [{id:"minecraft:stone",Count:10b, Slot:0b},{id:"minecraft:feather",Count:27b, Slot:1b},{id:"minecraft:stone",Count:8b, Slot:2b}]
data modify storage call_stack: call.arg1 set value "minecraft:stone"
data modify storage call_stack: call.arg2 set value 13
function dt.inventory:api/items/take
data modify storage unittest:in actual set from storage call_stack: call.return
function call_stack:pop

function unittest:api/assert/equal
function unittest:api/test_case/teardown


data modify storage unittest:in name set value "take cumulative remaining fail"
function unittest:api/test_case/setup

data modify storage unittest:in expected set value {items:[{id:"minecraft:feather",Count:27b}], success:false, remaining_count:2}

function call_stack:push
data modify storage call_stack: call.arg0 set value [{id:"minecraft:stone",Count:10b},{id:"minecraft:feather",Count:27b},{id:"minecraft:stone",Count:8b}]
data modify storage call_stack: call.arg1 set value "minecraft:stone"
data modify storage call_stack: call.arg2 set value 20
function dt.inventory:api/items/take
data modify storage unittest:in actual set from storage call_stack: call.return
function call_stack:pop

function unittest:api/assert/equal
function unittest:api/test_case/teardown


data modify storage unittest:in name set value "take nonexistent"
function unittest:api/test_case/setup

data modify storage unittest:in expected set value {items:[{id:"minecraft:stone",Count:10b},{id:"minecraft:feather",Count:27b},{id:"minecraft:stone",Count:8b}], success:false, remaining_count:20}

function call_stack:push
data modify storage call_stack: call.arg0 set value [{id:"minecraft:stone",Count:10b},{id:"minecraft:feather",Count:27b},{id:"minecraft:stone",Count:8b}]
data modify storage call_stack: call.arg1 set value "minecraft:foobar"
data modify storage call_stack: call.arg2 set value 20
function dt.inventory:api/items/take
data modify storage unittest:in actual set from storage call_stack: call.return
function call_stack:pop

function unittest:api/assert/equal
function unittest:api/test_case/teardown


data modify storage unittest:in name set value "take distributed 1 from 2 stacks success"
function unittest:api/test_case/setup

data modify storage unittest:in expected set value {items:[{id:"minecraft:stone",Count:9b, Slot:0b},{id:"minecraft:feather",Count:27b, Slot:1b},{id:"minecraft:stone",Count:7b, Slot:2b}], success:true, remaining_count:0}

function call_stack:push
data modify storage call_stack: call.arg0 set value [{id:"minecraft:stone",Count:10b, Slot:0b},{id:"minecraft:feather",Count:27b, Slot:1b},{id:"minecraft:stone",Count:8b, Slot:2b}]
data modify storage call_stack: call.arg1 set value "minecraft:stone"
data modify storage call_stack: call.arg2 set value 2
data modify storage call_stack: call.arg3 set value true
function dt.inventory:api/items/take
data modify storage unittest:in actual set from storage call_stack: call.return
tellraw @p ["test_take.mcfunction: ",{"nbt":"call.return","storage":"call_stack:"}]
function call_stack:pop

function unittest:api/assert/equal
function unittest:api/test_case/teardown















function unittest:api/test_suite/teardown