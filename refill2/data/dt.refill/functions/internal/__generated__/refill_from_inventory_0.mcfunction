# Built with mcpy (https://github.com/dthigpen/mcpy)

function dt.inventory:api/player/items/inventory/get
data modify storage call_stack: this.var3 set from storage call_stack: call.return
data modify storage call_stack: this.var1.id set from storage call_stack: this.var2.id
data modify storage call_stack: this.var1.Slot set from storage call_stack: this.var2.Slot
