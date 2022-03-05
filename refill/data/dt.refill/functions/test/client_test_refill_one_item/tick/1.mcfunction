say tick 1: drop item

execute as @p run data modify storage call_stack: call.arg0 set value 0
execute as @p run function dt.inventory:api/player/item/slot/remove 

function unittest:api/v1/assert/force/pass