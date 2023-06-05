# Built with mcpy (https://github.com/dthigpen/mcpy)

function dt.inventory:api/player/items/inventory/get
data modify storage call_stack: this.var2 set from storage call_stack: call.return
data modify storage call_stack: this.var0.id set from storage call_stack: this.var1.id
data modify storage call_stack: this.var0.Slot set from storage call_stack: this.var1.Slot
