function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "Item dropped, slot refills"

execute as @a[tag=dt.refill.player,limit=1] at @s run data modify storage call_stack: call.actual set from entity @s Inventory[{Slot:0b}]
execute as @a[tag=dt.refill.player,limit=1] at @s run data modify storage call_stack: call.expected set value {id:"minecraft:feather",Count:4b,Slot:0b}
function unittest:api/assert/equal
execute as @a[tag=dt.refill.player,limit=1] at @s run data modify storage call_stack: call.actual set from entity @s Inventory[{Slot:21b}]
function unittest:api/assert/is_not_set
function unittest:api/test_case/teardown