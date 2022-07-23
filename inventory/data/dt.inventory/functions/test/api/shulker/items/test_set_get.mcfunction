#function unittest:api/config/enable/detailed_results
function unittest:api/test_suite/setup
data modify storage call_stack: this.name set value "Test shulker set/get"


function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "set_get_items_empty_list"

data modify storage call_stack: call.arg0 set value []
function dt.inventory:api/shulker/items/set
function dt.inventory:api/shulker/items/get
data modify storage call_stack: call.actual set from storage call_stack: call.return

data modify storage call_stack: call.expected set value []
function unittest:api/assert/equal
function unittest:api/test_case/teardown


function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "set_items_bad_slot_number"

data modify storage call_stack: call.arg0 set value [{id:"minecraft:feather",Count:1b,Slot:-1b}]
function dt.inventory:api/shulker/items/set
function dt.inventory:api/shulker/items/get
data modify storage call_stack: call.actual set from storage call_stack: call.return

data modify storage call_stack: call.expected set value [{id:"minecraft:feather",Count:1b,Slot:0b}]
function unittest:api/assert/equal
function unittest:api/test_case/teardown

function unittest:api/test_suite/teardown