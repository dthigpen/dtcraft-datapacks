say tick 2: check for refilled items

data modify storage unittest:in expected set value 10b
execute as @p run data modify storage unittest:in actual set from entity @s Inventory[{Slot:0b}].Count
function unittest:api/assert/equal