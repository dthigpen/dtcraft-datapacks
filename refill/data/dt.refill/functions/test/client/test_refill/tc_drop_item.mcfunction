function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "Drop hotbar item"

execute as @a[tag=dt.refill.player,limit=1] at @s run data modify storage call_stack: call.actual set from entity @s Inventory[{Slot:0b}]
function unittest:api/assert/is_set
execute as @a[tag=dt.refill.player,limit=1] at @s run item replace entity @s hotbar.0 with minecraft:air
execute as @a[tag=dt.refill.player,limit=1] at @s run data modify storage call_stack: call.actual set from entity @s Inventory[{Slot:0b}]
function unittest:api/assert/is_not_set
function unittest:api/test_case/teardown