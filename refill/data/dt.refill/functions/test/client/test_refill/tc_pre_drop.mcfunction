function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "Setup items"

item replace entity @p hotbar.0 with minecraft:feather 1
item replace entity @p inventory.12 with minecraft:feather 4
data modify storage call_stack: call.actual set from entity @p Inventory[{Slot:0b, id:"minecraft:feather"}]
function unittest:api/assert/is_set
data modify storage call_stack: call.actual set from entity @p Inventory[{Slot:21b, id:"minecraft:feather"}]
function unittest:api/assert/is_set
function unittest:api/test_case/teardown