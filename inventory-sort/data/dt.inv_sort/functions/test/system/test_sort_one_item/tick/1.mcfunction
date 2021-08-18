say tick 1: sorted

# data modify storage unittest:in expected set value 10b
data modify storage unittest:in expected set value {id:"minecraft:dirt",Count:10b, Slot:9b}
execute as @p run data modify storage unittest:in actual set from entity @s Inventory[{Slot:9b}]
function unittest:api/assert/equal