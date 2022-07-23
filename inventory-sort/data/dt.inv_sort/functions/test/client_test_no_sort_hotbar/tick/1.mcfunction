say tick 1: sorted

execute as @p run data modify storage call_stack: call.actual set from entity @s Inventory[{Slot:9b}]
data modify storage call_stack: call.expected set value {id:"minecraft:dirt",Count:15b, Slot:9b}
function unittest:api/assert/equal

execute as @p run data modify storage call_stack: call.actual set from entity @s Inventory[{Slot:3b}]
data modify storage call_stack: call.expected set value {id:"minecraft:dirt",Count:5b, Slot:3b}
function unittest:api/assert/equal