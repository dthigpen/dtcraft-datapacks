#say from_inventory
data modify storage dtcraft:call_stack this.this_user set from storage dtcraft:call_stack this.arg0

function dtcraft:inventory_utils/get_inventory
data modify storage ddtcraft:call_stack this.items set from storage dtcraft:call_stack this.calls[0].value

data modify storage dtcraft:call_stack call.arg0 set from storage ddtcraft:call_stack this.items
data modify storage dtcraft:call_stack call.arg1 set from storage dtcraft:call_stack this.this_user.data.selected.id
function dtcraft:inventory_utils/arrays/get_first_by_id
data modify storage ddtcraft:call_stack this.item_found set from storage dtcraft:call_stack this.calls[0].value

execute if score result dt.tmp = #found dt.enum run data modify storage dtcraft:call_stack call.arg0 set from storage dtcraft:call_stack this.this_user
execute if score result dt.tmp = #found dt.enum run data modify storage dtcraft:call_stack call.arg1 set from storage ddtcraft:call_stack this.item_found
execute if score result dt.tmp = #found dt.enum run function dtcraft:refill/do_refill
execute if score result dt.tmp = #not_found dt.enum run data remove storage dtcraft:call_stack this.this_user.data.selected