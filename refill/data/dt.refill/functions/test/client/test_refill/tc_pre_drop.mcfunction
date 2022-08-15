function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "Item dropped"

item replace entity @p hotbar.0 with minecraft:feather
item replace entity @p inventory.12 with minecraft:feather 4
data modify storage call_stack: call.actual set from entity @p Inventory[{Slot:0b}]
function unittest:api/assert/is_set
data modify storage call_stack: call.actual set from entity @p Inventory[{Slot:21b}]
function unittest:api/assert/is_set
function unittest:api/test_case/teardown