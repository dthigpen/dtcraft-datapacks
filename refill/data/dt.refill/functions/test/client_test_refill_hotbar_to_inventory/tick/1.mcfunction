say tick 1: put item in inventory

execute as @p run data modify storage call_stack: call.arg0 set value 0
execute as @p run function dt.inventory:api/player/item/slot/remove 

# put same stack in inventory
execute as @p run data modify storage call_stack: call.arg0 set value {id:"minecraft:dirt", Count:1b,Slot:27b}
execute as @p run function dt.inventory:api/player/item/replace

function unittest:api/v1/assert/force/pass