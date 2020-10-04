# say do_refill
function dtcraft:call_stack/push

data modify storage dtcraft:call_stack this.this_user set from storage dtcraft:call_stack this.arg0
data modify storage dtcraft:call_stack this.item set from storage dtcraft:call_stack this.arg1

data modify storage dtcraft:call_stack this.original_slot set from storage dtcraft:call_stack this.item.Slot
data modify storage dtcraft:call_stack this.item.Slot set from storage dtcraft:call_stack this.this_user.data.selected.slot

data modify storage dtcraft:call_stack call.arg0 set from storage dtcraft:call_stack this.item
function dtcraft:inventory_utils/replace_slot

data modify storage dtcraft:call_stack call.arg0 set from storage dtcraft:call_stack this.original_slot
function dtcraft:inventory_utils/remove_slot

function dtcraft:call_stack/pop