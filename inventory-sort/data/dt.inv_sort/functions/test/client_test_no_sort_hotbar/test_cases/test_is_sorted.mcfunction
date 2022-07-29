function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "Test is sorted"

execute as @a[tag=dt.tester,limit=1] run data modify storage call_stack: call.actual set from entity @s Inventory[{Slot:9b}]
data modify storage call_stack: call.expected set value {id:"minecraft:dirt",Count:15b, Slot:9b}
function unittest:api/assert/equal

execute as @a[tag=dt.tester,limit=1] run data modify storage call_stack: call.actual set from entity @s Inventory[{Slot:3b}]
data modify storage call_stack: call.expected set value {id:"minecraft:dirt",Count:5b, Slot:3b}
function unittest:api/assert/equal

function unittest:api/test_case/teardown