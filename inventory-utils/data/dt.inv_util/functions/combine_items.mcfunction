function call_stack:push

data modify storage call_stack: this.items set from storage call_stack: this.arg0

data modify storage call_stack: call.arg0 set from storage call_stack: this.items
function dt.inv_util:reset_slots
data modify storage call_stack: this.items set from storage call_stack: call.result

data modify block 2999999 255 2999999 Items set value []
data modify block 2999999 254 2999999 Items set from storage call_stack: this.items

loot insert 2999999 255 2999999 mine 2999999 254 2999999 stick{drop_contents:true}

data modify storage call_stack: this.result set from block 2999999 255 2999999 Items

function call_stack:pop