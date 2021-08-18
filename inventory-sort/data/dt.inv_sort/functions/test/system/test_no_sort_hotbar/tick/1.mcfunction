say tick 1: sorted

data modify storage unittest:in expected set value {id:"minecraft:dirt",Count:15b, Slot:9b}
execute as @p run data modify storage unittest:in actual set from entity @s Inventory[{Slot:9b}]
function unittest:api/assert/equal

data modify storage unittest:in expected set value {id:"minecraft:dirt",Count:5b, Slot:3b}
execute as @p run data modify storage unittest:in actual set from entity @s Inventory[{Slot:3b}]
function unittest:api/assert/equal