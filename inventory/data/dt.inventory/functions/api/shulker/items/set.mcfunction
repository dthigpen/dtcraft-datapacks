#> dt.inventory:api/shulker/items/set
# set the shulker items to be used for following commands
# @params
#   storage call_stack: call.arg0
#       list of items
function call_stack:push
data modify storage call_stack: this.items set from storage call_stack: this.arg0

# reset slots
# data remove storage call_stack: this.items[].Slot
data modify storage call_stack: call.arg0 set from storage call_stack: this.items
function dt.inventory:api/items/reset_slots
data modify storage call_stack: this.items set from storage call_stack: call.return
# set items
execute in overworld run data modify block 2999999 255 2999999 Items set value []
execute in overworld run data modify block 2999999 255 2999999 Items set from storage call_stack: this.items

function call_stack:pop