data modify storage unittest:in name set value "Test Recipe Search"
function unittest:api/test_suite/setup

data modify storage unittest:in name set value "Test 1"
function unittest:api/test_case/setup

data modify storage call_stack: call.arg0 set value [{ingredients:[{type:"id",id:"minecraft:iron_nugget",Slot:1b},{type:"id",id:"minecraft:iron_ingot",Slot:4b},{type:"id",id:"minecraft:iron_nugget",Slot:7b}]}]
data modify storage call_stack: call.arg1 set value [{id:"minecraft:iron_nugget",Count:1b, Slot:1b},{id:"minecraft:iron_ingot",Count:1b, Slot:4b},{id:"minecraft:iron_nugget",Count:1b, Slot:7b}]
function dt.crafting:internal/search
data modify storage unittest:in actual set from storage call_stack: call.return
# data modify storage unittest:in expected set value ExpectedValue
function unittest:api/assert/is_set
function unittest:api/test_case/teardown
function unittest:api/test_suite/teardown