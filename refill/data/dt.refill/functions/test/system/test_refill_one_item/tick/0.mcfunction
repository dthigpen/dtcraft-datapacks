say tick 0: give player items
execute as @p run clear @s
execute as @p run data modify storage call_stack: call.arg0 set value {id:"minecraft:dirt", Count:10b,Slot:27b}
execute as @p run function dt.inventory:api/player/slot/replace

execute as @p run data modify storage call_stack: call.arg0 set value {id:"minecraft:dirt", Count:1b,Slot:0b}
execute as @p run function dt.inventory:api/player/slot/replace

function unittest:api/assert/force/pass
