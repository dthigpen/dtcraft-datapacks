function call_stack:push
data modify storage call_stack: this.items set from storage call_stack: this.arg0

# reset slots
data modify storage call_stack: call.arg0 set from storage call_stack: this.items
function dt.inventory:api/reset_slots
data modify storage call_stack: this.items set from storage call_stack: call.result

# set items
data modify block 2999999 255 2999999 Items set from storage call_stack: this.items

function call_stack:pop