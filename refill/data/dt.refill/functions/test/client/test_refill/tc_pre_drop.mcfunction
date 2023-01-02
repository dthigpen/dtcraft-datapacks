function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "Setup items"

execute as @a[tag=dt.refill.player,limit=1] at @s run item replace entity @s hotbar.0 with minecraft:feather 1
execute as @a[tag=dt.refill.player,limit=1] at @s run item replace entity @s inventory.12 with minecraft:feather 4
execute as @a[tag=dt.refill.player,limit=1] at @s run data modify storage call_stack: call.actual set from entity @s Inventory[{Slot:0b, id:"minecraft:feather"}]
function unittest:api/assert/is_set
execute as @a[tag=dt.refill.player,limit=1] at @s run data modify storage call_stack: call.actual set from entity @s Inventory[{Slot:21b, id:"minecraft:feather"}]
function unittest:api/assert/is_set
function unittest:api/test_case/teardown