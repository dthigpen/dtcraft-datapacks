#> dt.inventory:api/shulker/items/get
# get the shulker items
# @output
#   storage call_stack: call.return
#       list of items
function call_stack:push
data modify storage call_stack: this.return set value []
execute in overworld run data modify storage call_stack: this.return set from block 2999999 255 2999999 Items
function call_stack:pop