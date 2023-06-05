# Built with mcpy (https://github.com/dthigpen/mcpy)

function call_stack:push
data modify storage call_stack: this.var1 set value {"id": ""}
data modify storage call_stack: this.var1.id set from storage call_stack: this.arg0.selected.id
data modify storage call_stack: call.arg0 set from storage call_stack: this.arg0.inventory
data modify storage call_stack: call.arg1 set from storage call_stack: this.var1
data modify storage call_stack: call.arg2 set value 1
function dt.array:api/split/by_key_limit_n
data modify storage call_stack: this.var2 set from storage call_stack: call.return[0][0]
execute if data storage call_stack: this.var2.id run function dt.refill:internal/__generated__/refill_from_inventory_2
execute if data storage call_stack: this.var2.id run data modify storage call_stack: call.arg0 set from storage call_stack: this.var3
execute if data storage call_stack: this.var2.id run data modify storage call_stack: call.arg1 set from storage call_stack: this.var1
execute if data storage call_stack: this.var2.id run data modify storage call_stack: call.arg2 set value 1
execute if data storage call_stack: this.var2.id run function dt.array:api/split/by_key_limit_n
execute if data storage call_stack: this.var2.id run data modify storage call_stack: this.var4 set from storage call_stack: call.return[0][0]
execute if data storage call_stack: this.var2.id run execute if data storage call_stack: this.var4.id run data modify storage call_stack: call.arg0 set from storage call_stack: this.arg0
execute if data storage call_stack: this.var2.id run execute if data storage call_stack: this.var4.id run data modify storage call_stack: call.arg1 set from storage call_stack: this.var4
execute if data storage call_stack: this.var2.id run execute if data storage call_stack: this.var4.id run function dt.refill:internal/do_refill
function call_stack:pop
