function call_stack:push
data modify storage call_stack: this.item_data set from storage call_stack: this.arg0

data modify storage call_stack: call.arg0 set value {Item:{}}
data modify storage call_stack: call.arg0.Item merge from storage call_stack: this.item_data
function dt.inventory:api/item/summon

function call_stack:pop