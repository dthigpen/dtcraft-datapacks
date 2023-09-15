# Built with mcpy (https://github.com/dthigpen/mcpy)

function call_stack:push
data modify storage call_stack: this.var1 set from storage call_stack: this.arg1.Slot
data modify storage call_stack: this.arg1.Slot set from storage call_stack: this.arg0.selected.Slot
execute unless data entity @s SelectedItem run data modify storage call_stack: call.arg0 set from storage call_stack: this.var1
execute unless data entity @s SelectedItem run function dt.inventory:api/player/item/slot/remove
data modify storage call_stack: call.arg0 set from storage call_stack: this.arg1
function dt.inventory:api/player/item/replace
data modify storage call_stack: call.arg0 set from storage call_stack: this.var1
function dt.refill:internal/print_did_refill
function call_stack:pop
