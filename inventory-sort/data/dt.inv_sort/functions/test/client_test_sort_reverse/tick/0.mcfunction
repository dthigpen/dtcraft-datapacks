say tick 0: give player items, trigger sort
execute as @p run clear @s

data modify storage call_stack: call.arg0 set value []
data modify storage call_stack: call.arg0 append value {id:"minecraft:chest", Count:1b}
data modify storage call_stack: call.arg0 append value {id:"minecraft:arrow", Count:1b}
data modify storage call_stack: call.arg0 append value {id:"minecraft:diamond_axe", Count:1b}
data modify storage call_stack: call.arg0 append value {id:"minecraft:jungle_fence", Count:1b}
data modify storage call_stack: call.arg0 append value {id:"minecraft:spruce_planks", Count:1b}
data modify storage call_stack: call.arg0 append value {id:"minecraft:melon_slice", Count:1b}
data modify storage call_stack: call.arg0 append value {id:"minecraft:wheat_seeds", Count:1b}
data modify storage call_stack: call.arg0 append value {id:"minecraft:coal", Count:1b}
execute as @p run function dt.inventory:api/player/items/inventory/replace

execute as @p run trigger dt.sort
function unittest:api/assert/force/pass
