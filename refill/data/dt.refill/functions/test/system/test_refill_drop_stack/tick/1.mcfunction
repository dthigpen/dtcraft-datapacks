say tick 1: drop the stack

execute as @p run data modify storage call_stack: call.arg0 set value 0
execute as @p run function dt.inventory:api/player/slot/remove 

function unittest:api/assert/force/pass