#> dt.inventory:api/shulker/items/get2
# get the shulker2 items
# @output
#   storage call_stack: call.return
#       list of items
function call_stack:push
data modify storage call_stack: this.return set value []
execute in overworld run data modify storage call_stack: this.return set from block 2999999 254 2999999 Items
function call_stack:pop