# Built with mcpy (https://github.com/dthigpen/mcpy)

function call_stack:push
execute unless data entity @s SelectedItem run data modify storage call_stack: call.arg0 set from storage call_stack: this.arg1.Slot
execute unless data entity @s SelectedItem run function dt.inventory:api/player/item/slot/remove
data modify storage call_stack: call.arg0 set from storage call_stack: this.arg1
function dt.inventory:api/player/item/replace
data modify storage call_stack: call.arg0 set from storage call_stack: this.arg1.Slot
function dt.refill:internal/print_did_refill
function call_stack:pop
