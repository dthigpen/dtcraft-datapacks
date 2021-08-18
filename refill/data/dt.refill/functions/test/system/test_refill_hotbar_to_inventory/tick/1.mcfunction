say tick 1: put item in inventory

execute as @p run data modify storage call_stack: call.arg0 set value 0
execute as @p run function dt.inventory:api/player/slot/remove 

# put same stack in inventory
execute as @p run data modify storage call_stack: call.arg0 set value {id:"minecraft:dirt", Count:1b,Slot:27b}
execute as @p run function dt.inventory:api/player/slot/replace

function unittest:api/assert/force/pass