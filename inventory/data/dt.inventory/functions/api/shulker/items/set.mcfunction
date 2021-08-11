#> dt.inventory:api/shulker/items/set
# set the shulker items to be used for following commands
# @params
#   storage call_stack: call.arg0
#       list of items
function call_stack:push
data modify storage call_stack: this.items set from storage call_stack: this.arg0

# reset slots
data remove storage call_stack: this.items[].Slot
# set items
data modify block 2999999 255 2999999 Items set from storage call_stack: this.items

function call_stack:pop