function call_stack:push

forceload add 777777 777777
setblock 777777 255 777777 barrel
data modify block 777777 255 777777 Items set from storage call_stack: this.arg0

function call_stack:pop