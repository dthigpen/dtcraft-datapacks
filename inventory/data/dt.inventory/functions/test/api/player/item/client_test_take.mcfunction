function unittest:api/test_suite/setup
data modify storage call_stack: this.name set value "Take"

function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "Take partial stack"
clear @s feather
data modify storage call_stack: call.arg0 set value [{id:"minecraft:feather", Count:3b, Slot:0}]
function dt.inventory:api/player/items/replace
data modify storage call_stack: call.arg0 set value "minecraft:feather"
data modify storage call_stack: call.arg1 set value 2b
function dt.inventory:api/player/item/take
data remove storage unittest:in actual
data modify storage call_stack: call.actual set from entity @s Inventory[{id:"minecraft:feather", Slot:0b}]
data modify storage call_stack: call.expected set value {id:"minecraft:feather", Count:1b, Slot:0b}
function unittest:api/assert/equal
function unittest:api/test_case/teardown
clear @s feather


function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "Take over one stack"
clear @s feather
data modify storage call_stack: call.arg0 set value [{id:"minecraft:feather", Count:3b, Slot:0b},{id:"minecraft:feather", Count:9b, Slot:1b}]
function dt.inventory:api/player/items/replace
data modify storage call_stack: call.arg0 set value "minecraft:feather"
data modify storage call_stack: call.arg1 set value 6b
function dt.inventory:api/player/item/take
data remove storage unittest:in actual
data modify storage call_stack: call.actual set from entity @s Inventory[{id:"minecraft:feather", Slot:1b}]
data modify storage call_stack: call.expected set value {id:"minecraft:feather", Count:6b, Slot:1b}
function unittest:api/assert/equal
clear @s feather
function unittest:api/test_case/teardown

function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "Take more than player has"
clear @s feather
data modify storage call_stack: call.arg0 set value [{id:"minecraft:feather", Count:3b, Slot:0b},{id:"minecraft:feather", Count:9b, Slot:1b}]
function dt.inventory:api/player/items/replace
data modify storage call_stack: call.arg0 set value "minecraft:feather"
data modify storage call_stack: call.arg1 set value 20
function dt.inventory:api/player/item/take
data modify storage call_stack: call.actual set from storage call_stack: call.return
clear @s feather
data modify storage call_stack: call.expected set value 8
function unittest:api/assert/equal
function unittest:api/test_case/teardown

function unittest:api/test_suite/teardown