# say do_refill
function call_stack:push

data modify storage call_stack: this.this_user set from storage call_stack: this.arg0
data modify storage call_stack: this.item set from storage call_stack: this.arg1

data modify storage call_stack: this.original_slot set from storage call_stack: this.item.Slot
data modify storage call_stack: this.item.Slot set from storage call_stack: this.this_user.data.selected.slot

data modify storage call_stack: call.arg0 set from storage call_stack: this.item
function dt.inv_util:api/replace_slot

data modify storage call_stack: call.arg0 set from storage call_stack: this.original_slot
function dt.inv_util:api/remove_slot

function call_stack:pop