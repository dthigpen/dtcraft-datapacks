say tick 3: sorted

# data modify storage call_stack: call.expected set value {id:"minecraft:dirt",Count:15b, Slot:9b}
execute as @p run data modify storage call_stack: call.actual set from entity @s Inventory[{Slot:9b}]
data modify storage call_stack: call.expected set value 10b
function unittest:api/assert/equal