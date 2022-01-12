#> dt.inventory:api/item/summon2
# Summon an item into the world with the given item data
# @params
#   storage call_stack: call.arg0
#       object item data such as {id:"minecrat:stone",Count:10b}
function call_stack:push
data modify storage call_stack: this.item_data set from storage call_stack: this.arg0

data modify storage call_stack: call.arg0 set value {Item:{}}
data modify storage call_stack: call.arg0.Item merge from storage call_stack: this.item_data
function dt.inventory:api/item/summon

function call_stack:pop