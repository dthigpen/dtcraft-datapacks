function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "Pre item drop"

data modify storage call_stack: call.actual set from entity @p Inventory[{Slot:0b}]
function unittest:api/assert/is_set
item replace entity @p hotbar.0 with minecraft:air
data modify storage call_stack: call.actual set from entity @p Inventory[{Slot:0b}]
function unittest:api/assert/is_not_set
function unittest:api/test_case/teardown