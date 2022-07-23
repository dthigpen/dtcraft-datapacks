#function unittest:api/config/enable/detailed_results
function unittest:api/test_suite/setup
data modify storage call_stack: this.name set value "Shulker loot insert block"


function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "empty list"
data modify storage call_stack: this.array set value []
function dt.inventory:api/shulker/items/clear
function dt.inventory:api/shulker/items/clear2
data modify storage call_stack: call.arg0 set from storage call_stack: this.array
function dt.inventory:api/shulker/items/set
execute in overworld positioned 2999999 254 2999999 run function dt.inventory:api/shulker/loot/insert/block
function dt.inventory:api/shulker/items/get2
data modify storage call_stack: call.actual set from storage call_stack: call.return
data modify storage call_stack: call.expected set value []
function unittest:api/assert/equal
function unittest:api/test_case/teardown



function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "non-empty list"
data modify storage call_stack: this.array set value [{id:"minecraft:feather",Count:1b,Slot:-1b}]
function dt.inventory:api/shulker/items/clear
function dt.inventory:api/shulker/items/clear2
data modify storage call_stack: call.arg0 set from storage call_stack: this.array
function dt.inventory:api/shulker/items/set
execute in overworld positioned 2999999 254 2999999 run function dt.inventory:api/shulker/loot/insert/block
function dt.inventory:api/shulker/items/get2
data modify storage call_stack: call.actual set from storage call_stack: call.return
data modify storage call_stack: call.expected set value [{id:"minecraft:feather",Count:1b,Slot:0b}]
function unittest:api/assert/equal
function unittest:api/test_case/teardown







function unittest:api/test_suite/teardown