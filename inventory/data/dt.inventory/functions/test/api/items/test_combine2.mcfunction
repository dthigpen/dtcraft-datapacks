# function unittest:api/config/enable/detailed_results
function unittest:api/test_suite/setup
data modify storage call_stack: this.name set value "Test items/combine2"

function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "Test 1"
data modify storage call_stack: call.arg0 set value [{Slot:0b,Count:64b,id:"minecraft:feather"},{Slot:1b,Count:64b,id:"minecraft:feather"},{Slot:27b,Count:25b,id:"minecraft:feather"},{Slot:28b,Count:35b,id:"minecraft:feather"}]
function dt.inventory:api/items/combine2
data modify storage call_stack: call.actual set from storage call_stack: call.return
data modify storage call_stack: call.expected set value [{Slot:0b,Count:64b,id:"minecraft:feather"},{Slot:1b,Count:64b,id:"minecraft:feather"},{Slot:2b,Count:60b,id:"minecraft:feather"}]
function unittest:api/assert/equal
function unittest:api/test_case/teardown

function unittest:api/test_suite/teardown