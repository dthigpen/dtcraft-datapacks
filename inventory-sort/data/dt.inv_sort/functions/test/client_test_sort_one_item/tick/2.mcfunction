say tick 2: add items to inventory, multiple items of same id, trigger sort

execute as @p run clear @s

execute as @p run data modify storage call_stack: call.arg0 set value {id:"minecraft:dirt", Count:10b,Slot:27b}
execute as @p run function dt.inventory:api/player/item/replace
execute as @p run data modify storage call_stack: call.arg0 set value {id:"minecraft:dirt", Count:5b,Slot:28b}
execute as @p run function dt.inventory:api/player/item/replace

execute as @p run trigger dt.sort
function unittest:api/v1/assert/force/pass
