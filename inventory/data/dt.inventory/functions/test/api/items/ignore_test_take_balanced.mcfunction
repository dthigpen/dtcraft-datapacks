# function unittest:api/config/enable/detailed_results
function unittest:api/test_suite/setup
data modify storage call_stack: this.name set value "take_balanced"

function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "In range"


data modify storage call_stack: this.all_items set value [{Slot:9b, id:"minecraft:feather",Count:4b},{Slot:10b, id:"minecraft:feather",Count:3b},{Slot:11b, id:"minecraft:feather",Count:2b},{Slot:13b,id:"minecraft:redstone",Count:8b}]
data modify storage call_stack: this.expected_remaining set value [{Slot:9b, id:"minecraft:feather",Count:3b},{Slot:10b, id:"minecraft:feather",Count:2b},{Slot:11b, id:"minecraft:feather",Count:1b},{Slot:13b,id:"minecraft:redstone",Count:8b}]
data modify storage call_stack: this.expected_taken set value [{Slot:9b, id:"minecraft:feather",Count:1b},{Slot:10b, id:"minecraft:feather",Count:1b},{Slot:11b, id:"minecraft:feather",Count:1b}]
# data modify storage call_stack: this.expected_remaining set value [{Slot:13b,id:"minecraft:redstone",Count:8b}]
data modify storage call_stack: call.arg0 set from storage call_stack: this.all_items
data modify storage call_stack: call.arg1 set value "minecraft:feather"
data modify storage call_stack: call.arg2 set value [9b,10b,11b]
data modify storage call_stack: call.arg3 set value 1
function dt.inventory:api/items/take_balanced
data modify storage call_stack: call.actual set from storage call_stack: call.return.taken
data modify storage call_stack: call.expected set from storage call_stack: this.expected_taken
function unittest:api/assert/equal

data modify storage call_stack: call.actual set from storage call_stack: call.return.remaining
data modify storage call_stack: call.expected set from storage call_stack: this.expected_remaining
function unittest:api/assert/equal




function unittest:api/test_case/teardown

function unittest:api/test_suite/teardown