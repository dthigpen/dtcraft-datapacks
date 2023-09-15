# Built with mcpy (https://github.com/dthigpen/mcpy)

function dt.inventory:api/player/items/inventory/get
data modify storage call_stack: this.var4 set from storage call_stack: call.return
data modify storage call_stack: this.var2.id set from storage call_stack: this.var3.id
data modify storage call_stack: this.var2.Slot set from storage call_stack: this.var3.Slot
data modify storage call_stack: call.arg0 set from storage call_stack: this.var4
data modify storage call_stack: call.arg1 set from storage call_stack: this.var2
data modify storage call_stack: call.arg2 set value 1
function dt.array:api/split/by_key_limit_n
data modify storage call_stack: this.var5 set from storage call_stack: call.return[0][0]
execute if data storage call_stack: this.var5.id run data modify storage call_stack: call.arg0 set from storage call_stack: this.user
execute if data storage call_stack: this.var5.id run data modify storage call_stack: call.arg1 set from storage call_stack: this.var5
execute if data storage call_stack: this.var5.id run function dt.refill:internal/do_refill
