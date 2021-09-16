data modify storage unittest:in name set value "Take"
function unittest:api/test_suite/setup

data modify storage unittest:in name set value "Take partial stack"
function unittest:api/test_case/setup
function call_stack:push
clear @s feather
data modify storage call_stack: call.arg0 set value [{id:"minecraft:feather", Count:3b, Slot:0}]
function dt.inventory:api/player/items/replace
data modify storage call_stack: call.arg0 set value "minecraft:feather"
data modify storage call_stack: call.arg1 set value 2b
function dt.inventory:api/player/item/take
data remove storage unittest:in actual
data modify storage unittest:in actual set from entity @s Inventory[{id:"minecraft:feather", Count:1b, Slot:0b}]
clear @s feather
function call_stack:pop
function unittest:api/assert/is_set
function unittest:api/test_case/teardown


data modify storage unittest:in name set value "Take over one stack"
function unittest:api/test_case/setup
function call_stack:push
clear @s feather
data modify storage call_stack: call.arg0 set value [{id:"minecraft:feather", Count:3b, Slot:0b},{id:"minecraft:feather", Count:9b, Slot:1b}]
function dt.inventory:api/player/items/replace
data modify storage call_stack: call.arg0 set value "minecraft:feather"
data modify storage call_stack: call.arg1 set value 6b
function dt.inventory:api/player/item/take
data remove storage unittest:in actual
data modify storage unittest:in actual set from entity @s Inventory[{id:"minecraft:feather", Count:6b, Slot:1b}]
clear @s feather
function call_stack:pop
function unittest:api/test_case/teardown

data modify storage unittest:in name set value "Take more than player has"
function unittest:api/test_case/setup
function call_stack:push
clear @s feather
data modify storage call_stack: call.arg0 set value [{id:"minecraft:feather", Count:3b, Slot:0b},{id:"minecraft:feather", Count:9b, Slot:1b}]
function dt.inventory:api/player/items/replace
data modify storage call_stack: call.arg0 set value "minecraft:feather"
data modify storage call_stack: call.arg1 set value 20
function dt.inventory:api/player/item/take
data modify storage unittest:in actual set from storage call_stack: call.result
clear @s feather
function call_stack:pop
data modify storage unittest:in expected set value 8
function unittest:api/assert/equal
function unittest:api/test_case/teardown

function unittest:api/test_suite/teardown