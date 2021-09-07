#> dt.inventory:api/player/item/slot/remove
# remove the item at the given slot from the current player's inventory
# @params
#   storage call_stack: call.arg0
#       slot to be removed
function call_stack:push

data modify storage call_stack: this.slot set from storage call_stack: this.arg0

data modify storage call_stack: call.arg0 set value {id:"minecraft:air",Count:1b,Slot:0b}
data modify storage call_stack: call.arg0.Slot set from storage call_stack: this.slot
function dt.inventory:api/player/item/replace

function call_stack:pop