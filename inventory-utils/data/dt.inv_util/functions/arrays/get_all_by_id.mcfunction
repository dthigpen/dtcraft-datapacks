#say get_all_by_id
function call_stack:push

data modify storage call_stack: this.items set from storage call_stack: this.arg0
data modify storage call_stack: this.id set from storage call_stack: this.arg1

data modify storage call_stack: this.result set value []

execute if data storage call_stack: this.items[0] run data modify storage call_stack: call.arg0 set from storage call_stack: this.items
execute if data storage call_stack: this.items[0] run data modify storage call_stack: call.arg1 set from storage call_stack: this.id
execute if data storage call_stack: this.items[0] run data modify storage call_stack: call.arg2 set value []
execute if data storage call_stack: this.items[0] run function dt.inv_util:arrays/get_all_by_id_loop
execute if data storage call_stack: this.items[0] run data modify storage call_stack: this.result set from storage call_stack: call.result



function call_stack:pop