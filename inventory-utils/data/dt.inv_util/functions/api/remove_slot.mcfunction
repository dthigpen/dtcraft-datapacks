function call_stack:push

data modify storage call_stack: this.slot set from storage call_stack: this.arg0

data modify storage call_stack: call.arg0 set value {id:"minecraft:air",Count:1b,Slot:0b}
data modify storage call_stack: call.arg0.Slot set from storage call_stack: this.slot
function dt.inv_util:api/replace_slot

function call_stack:pop