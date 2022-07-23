say tick 2: check that no refill occurred

# execute as @p run data modify storage call_stack: call.actual set from entity @s Inventory[{Slot:0b}].Count
data modify storage call_stack: call.expected set value 10b
function unittest:api/assert/is_not_set