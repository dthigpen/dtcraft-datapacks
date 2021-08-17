# say do_refill
function call_stack:push

data modify storage call_stack: this.user set from storage call_stack: this.arg0
data modify storage call_stack: this.item set from storage call_stack: this.arg1

data modify storage call_stack: this.slot_from_inventory set from storage call_stack: this.item.Slot
data modify storage call_stack: this.item.Slot set from storage call_stack: this.user.data.selected.Slot

# Replace the inventory item
execute unless data entity @s SelectedItem run data modify storage call_stack: call.arg0 set from storage call_stack: this.slot_from_inventory
execute unless data entity @s SelectedItem run function dt.inventory:api/player/slot/remove
# execute if data entity @s SelectedItem run data modify storage call_stack: call.arg0 set from entity @s SelectedItem
# execute if data entity @s SelectedItem run data modify storage call_stack: call.arg0.Slot set from storage call_stack: this.slot_from_inventory
# execute if data entity @s SelectedItem run function dt.inventory:api/player/slot/replace

# Replace the hotbar item
data modify storage call_stack: call.arg0 set from storage call_stack: this.item
function dt.inventory:api/player/slot/replace

data modify storage call_stack: call.arg0 set from storage call_stack: this.slot_from_inventory
function dt.refill:internal/output/print_did_refill

function call_stack:pop