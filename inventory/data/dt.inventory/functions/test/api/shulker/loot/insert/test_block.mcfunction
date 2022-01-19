#function unittest:api/config/enable/detailed_results
data modify storage unittest:in name set value "Shulker loot insert block"
function unittest:api/test_suite/setup


data modify storage unittest:in name set value "empty list"
function unittest:api/test_case/setup
function call_stack:push
data modify storage call_stack: this.array set value []
function dt.inventory:api/shulker/items/clear
function dt.inventory:api/shulker/items/clear2
data modify storage call_stack: call.arg0 set from storage call_stack: this.array
function dt.inventory:api/shulker/items/set
execute positioned 2999999 254 2999999 run function dt.inventory:api/shulker/loot/insert/block
function dt.inventory:api/shulker/items/get2
data modify storage unittest:in actual set from storage call_stack: call.return
function call_stack:pop
data modify storage unittest:in expected set value []
function unittest:api/assert/equal
function unittest:api/test_case/teardown



data modify storage unittest:in name set value "non-empty list"
function unittest:api/test_case/setup
function call_stack:push
data modify storage call_stack: this.array set value [{id:"minecraft:feather",Count:1b,Slot:-1b}]
function dt.inventory:api/shulker/items/clear
function dt.inventory:api/shulker/items/clear2
data modify storage call_stack: call.arg0 set from storage call_stack: this.array
function dt.inventory:api/shulker/items/set
execute positioned 2999999 254 2999999 run function dt.inventory:api/shulker/loot/insert/block
function dt.inventory:api/shulker/items/get2
data modify storage unittest:in actual set from storage call_stack: call.return
function call_stack:pop
data modify storage unittest:in expected set value [{id:"minecraft:feather",Count:1b,Slot:0b}]
function unittest:api/assert/equal
function unittest:api/test_case/teardown







function unittest:api/test_suite/teardown