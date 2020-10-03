function dtcraft:call_stack/push

data modify storage dtcraft:call_stack this.slot set from storage dtcraft:call_stack this.arg0

data modify storage dtcraft:call_stack call.arg0 set value {id:"minecraft:air",Count:1b,Slot:0b}
data modify storage dtcraft:call_stack call.arg0.Slot set from storage dtcraft:call_stack this.slot
function dtcraft:inventory_utils/replace_slot

function dtcraft:call_stack/pop