# say from_inventory
function dtcraft:call_stack/push

data modify storage dtcraft:call_stack this.this_user set from storage dtcraft:call_stack this.arg0

function dtcraft:inventory_utils/get_inventory
data modify storage dtcraft:call_stack this.items set from storage dtcraft:call_stack call.result

data modify storage dtcraft:call_stack call.arg0 set from storage dtcraft:call_stack this.items
data modify storage dtcraft:call_stack call.arg1 set from storage dtcraft:call_stack this.this_user.data.selected.id
function dtcraft:inventory_utils/arrays/get_first_by_id
data modify storage dtcraft:call_stack this.item_found set from storage dtcraft:call_stack call.result

execute if data storage dtcraft:call_stack this.item_found.id run data modify storage dtcraft:call_stack call.arg0 set from storage dtcraft:call_stack this.this_user
execute if data storage dtcraft:call_stack this.item_found.id run data modify storage dtcraft:call_stack call.arg1 set from storage dtcraft:call_stack this.item_found
execute if data storage dtcraft:call_stack this.item_found.id run function dtcraft:refill/do_refill
execute unless data storage dtcraft:call_stack this.item_found.id run data remove storage dtcraft:call_stack this.this_user.data.selected

function dtcraft:call_stack/pop