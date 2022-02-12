# function unittest:api/config/enable/detailed_results
data modify storage unittest:in name set value "Test insert"
function unittest:api/test_suite/setup


data modify storage unittest:in name set value "1 item in dest 1"
function unittest:api/test_case/setup
function call_stack:push
data modify storage call_stack: call.arg0 set value {id:"minecraft:feather",Count:1b,Slot:0b}
data modify storage call_stack: call.arg1 set value [{id:"minecraft:feather",Count:1b,Slot:1b}]
function dt.inventory:api/item/loot/insert
data modify storage unittest:in actual set from storage call_stack: call.return
function call_stack:pop
data modify storage unittest:in expected set value {items:[{id:"minecraft:feather",Count:2b,Slot:1b}],remaining:[]}
function unittest:api/assert/equal
function unittest:api/test_case/teardown



data modify storage unittest:in name set value "1 item in dest 2"
function unittest:api/test_case/setup
function call_stack:push
data modify storage call_stack: call.arg0 set value {id:"minecraft:feather",Count:5b,Slot:0b}
data modify storage call_stack: call.arg1 set value [{id:"minecraft:feather",Count:60b,Slot:1b}]
function dt.inventory:api/item/loot/insert
data modify storage unittest:in actual set from storage call_stack: call.return
function call_stack:pop
data modify storage unittest:in expected set value {items:[{id:"minecraft:feather",Count:64b,Slot:1b},{id:"minecraft:feather",Count:1b,Slot:0b}],remaining:[]}
function unittest:api/assert/equal
function unittest:api/test_case/teardown


data modify storage unittest:in name set value "1 item in dest 1, max 1"
function unittest:api/test_case/setup
function call_stack:push
data modify storage call_stack: call.arg0 set value {id:"minecraft:feather",Count:3b,Slot:0b}
data modify storage call_stack: call.arg1 set value [{id:"minecraft:feather",Count:63b,Slot:1b}]
data modify storage call_stack: call.arg2 set value 1
function dt.inventory:api/item/loot/insert
data modify storage unittest:in actual set from storage call_stack: call.return
function call_stack:pop
data modify storage unittest:in expected set value {items:[{id:"minecraft:feather",Count:64b,Slot:1b}],remaining:[{id:"minecraft:feather",Count:2b,Slot:0b}]}
function unittest:api/assert/equal
function unittest:api/test_case/teardown


data modify storage unittest:in name set value "1 item in dest 1, max 1"
function unittest:api/test_case/setup
function call_stack:push
data modify storage call_stack: call.arg0 set value {id:"minecraft:feather",Count:3b,Slot:0b}
data modify storage call_stack: call.arg1 set value [{id:"minecraft:feather",Count:63b,Slot:1b}]
data modify storage call_stack: call.arg2 set value 1
function dt.inventory:api/item/loot/insert
data modify storage unittest:in actual set from storage call_stack: call.return
function call_stack:pop
data modify storage unittest:in expected set value {items:[{id:"minecraft:feather",Count:64b,Slot:1b}],remaining:[{id:"minecraft:feather",Count:2b,Slot:0b}]}
function unittest:api/assert/equal
function unittest:api/test_case/teardown


data modify storage unittest:in name set value "empty dest"
function unittest:api/test_case/setup
function call_stack:push
data modify storage call_stack: call.arg0 set value {id:"minecraft:feather",Count:3b,Slot:1b}
data modify storage call_stack: call.arg1 set value []
function dt.inventory:api/item/loot/insert
data modify storage unittest:in actual set from storage call_stack: call.return
function call_stack:pop
data modify storage unittest:in expected set value {items:[{id:"minecraft:feather",Count:3b,Slot:0b}],remaining:[]}
function unittest:api/assert/equal
function unittest:api/test_case/teardown

function unittest:api/test_suite/teardown