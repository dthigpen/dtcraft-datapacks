function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "Test knowledge book replaced"

data modify storage call_stack: call.actual set from entity @p Inventory[{id:"minecraft:glow_item_frame"}]
function unittest:api/assert/is_set

function unittest:api/test_case/teardown