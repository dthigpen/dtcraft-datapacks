# function unittest:api/config/enable/detailed_results
data modify storage unittest:in name set value "take_balanced"
function unittest:api/v1/test_suite/setup

data modify storage unittest:in name set value "In range"
function unittest:api/v1/test_case/setup

function call_stack:push

data modify storage call_stack: this.all_items set value [{Slot:9b, id:"minecraft:feather",Count:4b},{Slot:10b, id:"minecraft:feather",Count:3b},{Slot:11b, id:"minecraft:feather",Count:2b},{Slot:13b,id:"minecraft:redstone",Count:8b}]
data modify storage call_stack: this.expected_remaining set value [{Slot:9b, id:"minecraft:feather",Count:3b},{Slot:10b, id:"minecraft:feather",Count:2b},{Slot:11b, id:"minecraft:feather",Count:1b},{Slot:13b,id:"minecraft:redstone",Count:8b}]
data modify storage call_stack: this.expected_taken set value [{Slot:9b, id:"minecraft:feather",Count:1b},{Slot:10b, id:"minecraft:feather",Count:1b},{Slot:11b, id:"minecraft:feather",Count:1b}]
# data modify storage call_stack: this.expected_remaining set value [{Slot:13b,id:"minecraft:redstone",Count:8b}]
data modify storage call_stack: call.arg0 set from storage call_stack: this.all_items
data modify storage call_stack: call.arg1 set value "minecraft:feather"
data modify storage call_stack: call.arg2 set value [9b,10b,11b]
data modify storage call_stack: call.arg3 set value 1
function dt.inventory:api/items/take_balanced
data modify storage unittest:in actual set from storage call_stack: call.return.taken
data modify storage unittest:in expected set from storage call_stack: this.expected_taken
function unittest:api/v1/assert/equal

data modify storage unittest:in actual set from storage call_stack: call.return.remaining
data modify storage unittest:in expected set from storage call_stack: this.expected_remaining
function unittest:api/v1/assert/equal

function call_stack:pop



function unittest:api/v1/test_case/teardown

function unittest:api/v1/test_suite/teardown