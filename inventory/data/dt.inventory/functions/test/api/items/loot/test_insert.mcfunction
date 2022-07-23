# function unittest:api/config/enable/detailed_results
function unittest:api/test_suite/setup
data modify storage call_stack: this.name set value "Test insert"


function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "Test loot all to dest"
data modify storage call_stack: call.arg0 set value [{id:"minecraft:feather",Count:3b,Slot:0b},{id:"minecraft:stick",Count:4b,Slot:1b}]
data modify storage call_stack: call.arg1 set value [{id:"minecraft:feather",Count:63b,Slot:1b},{id:"minecraft:stick",Count:1b,Slot:2b}]
function dt.inventory:api/items/loot/insert
data modify storage call_stack: call.actual set from storage call_stack: call.return
data modify storage call_stack: call.expected set value [[],[{id:"minecraft:feather",Count:64b,Slot:1b},{id:"minecraft:feather",Count:2b,Slot:0b},{id:"minecraft:stick",Count:5b,Slot:2b}]]
function unittest:api/assert/equal
function unittest:api/test_case/teardown



function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "Test has remaining"
data modify storage call_stack: call.arg0 set value [{id:"minecraft:feather",Count:3b,Slot:0b},{id:"minecraft:stick",Count:4b,Slot:1b}]
data modify storage call_stack: call.arg1 set value [{id:"minecraft:feather",Count:63b,Slot:1b},{id:"minecraft:stick",Count:1b,Slot:2b}]
data modify storage call_stack: call.arg2 set value 2b
function dt.inventory:api/items/loot/insert
data modify storage call_stack: call.actual set from storage call_stack: call.return
data modify storage call_stack: call.expected set value [[{id:"minecraft:feather",Count:2b,Slot:0b}],[{id:"minecraft:feather",Count:64b,Slot:1b},{id:"minecraft:stick",Count:5b,Slot:2b}]]
function unittest:api/assert/equal
function unittest:api/test_case/teardown



function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "Test loot to empty dest"
data modify storage call_stack: call.arg0 set value [{id:"minecraft:feather",Count:3b,Slot:2b},{id:"minecraft:stick",Count:4b,Slot:3b}]
data modify storage call_stack: call.arg1 set value []
function dt.inventory:api/items/loot/insert
data modify storage call_stack: call.actual set from storage call_stack: call.return
data modify storage call_stack: call.expected set value [[],[{id:"minecraft:feather",Count:3b,Slot:0b},{id:"minecraft:stick",Count:4b,Slot:1b}]]
function unittest:api/assert/equal
function unittest:api/test_case/teardown


function unittest:api/test_suite/teardown