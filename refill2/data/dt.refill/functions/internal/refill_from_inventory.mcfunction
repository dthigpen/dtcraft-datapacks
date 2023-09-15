# Built with mcpy (https://github.com/dthigpen/mcpy)

function call_stack:push
data modify storage call_stack: this.user set from storage call_stack: this.arg0
data modify storage call_stack: this.var2 set value {"id": ""}
data modify storage call_stack: this.var2.id set from storage call_stack: this.user.selected.id
data modify storage call_stack: call.arg0 set from storage call_stack: this.user.inventory
data modify storage call_stack: call.arg1 set from storage call_stack: this.var2
data modify storage call_stack: call.arg2 set value 1
function dt.array:api/split/by_key_limit_n
data modify storage call_stack: this.var3 set from storage call_stack: call.return[0][0]
execute if data storage call_stack: this.var3.id run function dt.refill:internal/__generated__/refill_from_inventory_0
function call_stack:pop
