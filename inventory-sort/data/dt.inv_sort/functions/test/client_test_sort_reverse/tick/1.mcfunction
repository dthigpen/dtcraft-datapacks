say tick 1: sorted

data modify storage unittest:in expected set value []
data modify storage unittest:in expected append value {Slot: 9b, id:"minecraft:coal", Count:1b}
data modify storage unittest:in expected append value {Slot: 10b, id:"minecraft:wheat_seeds", Count:1b}
data modify storage unittest:in expected append value {Slot: 11b, id:"minecraft:melon_slice", Count:1b}
data modify storage unittest:in expected append value {Slot: 12b, id:"minecraft:spruce_planks", Count:1b}
data modify storage unittest:in expected append value {Slot: 13b, id:"minecraft:jungle_fence", Count:1b}
data modify storage unittest:in expected append value {Slot: 14b, id:"minecraft:diamond_axe", Count:1b}
data modify storage unittest:in expected append value {Slot: 15b, id:"minecraft:arrow", Count:1b}
data modify storage unittest:in expected append value {Slot: 16b, id:"minecraft:chest", Count:1b}


execute as @p run data modify storage unittest:in actual set from entity @s Inventory
execute as @p run data remove storage unittest:in actual[].tag
function unittest:api/v1/assert/equal