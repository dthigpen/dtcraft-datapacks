# function unittest:api/config/enable/detailed_results
data modify storage unittest:in name set value "Test items/combine2"
function unittest:api/v1/test_suite/setup

data modify storage unittest:in name set value "Test 1"
function unittest:api/v1/test_case/setup
function call_stack:push
data modify storage call_stack: call.arg0 set value [{Slot:0b,Count:64b,id:"minecraft:feather"},{Slot:1b,Count:64b,id:"minecraft:feather"},{Slot:27b,Count:25b,id:"minecraft:feather"},{Slot:28b,Count:35b,id:"minecraft:feather"}]
function dt.inventory:api/items/combine2
data modify storage unittest:in actual set from storage call_stack: call.return
function call_stack:pop
data modify storage unittest:in expected set value [{Slot:0b,Count:64b,id:"minecraft:feather"},{Slot:1b,Count:64b,id:"minecraft:feather"},{Slot:2b,Count:60b,id:"minecraft:feather"}]
function unittest:api/v1/assert/equal
function unittest:api/v1/test_case/teardown

function unittest:api/v1/test_suite/teardown