say tick 0: give player items, trigger sort
execute as @p run clear @s

# inventory
execute as @p run data modify storage call_stack: call.arg0 set value {id:"minecraft:dirt", Count:10b,Slot:27b}
execute as @p run function dt.inventory:api/player/item/replace
execute as @p run data modify storage call_stack: call.arg0 set value {id:"minecraft:dirt", Count:5b,Slot:28b}
execute as @p run function dt.inventory:api/player/item/replace
# hotbar
execute as @p run data modify storage call_stack: call.arg0 set value {id:"minecraft:dirt", Count:5b,Slot:3b}
execute as @p run function dt.inventory:api/player/item/replace

execute as @p run trigger dt.sort
function unittest:api/assert/force/pass