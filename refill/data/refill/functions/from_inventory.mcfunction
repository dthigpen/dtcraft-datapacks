# say from_inventory
function call_stack:push

data modify storage call_stack: this.this_user set from storage call_stack: this.arg0

function inv_utils:get_inventory
data modify storage call_stack: this.items set from storage call_stack: call.result

data modify storage call_stack: call.arg0 set from storage call_stack: this.items
data modify storage call_stack: call.arg1 set from storage call_stack: this.this_user.data.selected.id
function inv_utils:arrays/get_first_by_id
data modify storage call_stack: this.item_found set from storage call_stack: call.result

execute if data storage call_stack: this.item_found.id run data modify storage call_stack: call.arg0 set from storage call_stack: this.this_user
execute if data storage call_stack: this.item_found.id run data modify storage call_stack: call.arg1 set from storage call_stack: this.item_found
execute if data storage call_stack: this.item_found.id run function refill:do_refill
execute unless data storage call_stack: this.item_found.id run data remove storage call_stack: this.this_user.data.selected

function call_stack:pop