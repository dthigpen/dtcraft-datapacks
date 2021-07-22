# say from_inventory
function call_stack:push

data modify storage call_stack: this.this_user set from storage call_stack: this.arg0

function dt.inventory:api/player/get/inventory
data modify storage call_stack: this.items set from storage call_stack: call.result

data modify storage call_stack: call.arg0 set from storage call_stack: this.items
data modify storage call_stack: call.arg1 set value {id:""}
data modify storage call_stack: call.arg1.id set from storage call_stack: this.this_user.data.selected.id
function dt.array:api/split_by_key
data modify storage call_stack: this.item_found set from storage call_stack: call.result[0][0]

execute if data storage call_stack: this.item_found.id run data modify storage call_stack: call.arg0 set from storage call_stack: this.this_user
execute if data storage call_stack: this.item_found.id run data modify storage call_stack: call.arg1 set from storage call_stack: this.item_found
execute if data storage call_stack: this.item_found.id run function dt.refill:do_refill
execute unless data storage call_stack: this.item_found.id run data remove storage call_stack: this.this_user.data.selected

function call_stack:pop