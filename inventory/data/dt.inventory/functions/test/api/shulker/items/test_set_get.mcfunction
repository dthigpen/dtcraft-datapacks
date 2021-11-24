#function unittest:api/config/enable/detailed_results
data modify storage unittest:in name set value "Test shulker set/get"
function unittest:api/test_suite/setup


data modify storage unittest:in name set value "set_get_items_empty_list"
function unittest:api/test_case/setup

function call_stack:push
data modify storage call_stack: call.arg0 set value []
function dt.inventory:api/shulker/items/set
function dt.inventory:api/shulker/items/get
data modify storage unittest:in actual set from storage call_stack: call.return
function call_stack:pop

data modify storage unittest:in expected set value []
function unittest:api/assert/equal
function unittest:api/test_case/teardown


data modify storage unittest:in name set value "set_items_bad_slot_number"
function unittest:api/test_case/setup

function call_stack:push
data modify storage call_stack: call.arg0 set value [{id:"minecraft:feather",Count:1b,Slot:-1b}]
function dt.inventory:api/shulker/items/set
function dt.inventory:api/shulker/items/get
data modify storage unittest:in actual set from storage call_stack: call.return
function call_stack:pop

data modify storage unittest:in expected set value [{id:"minecraft:feather",Count:1b,Slot:0b}]
function unittest:api/assert/equal
function unittest:api/test_case/teardown

function unittest:api/test_suite/teardown