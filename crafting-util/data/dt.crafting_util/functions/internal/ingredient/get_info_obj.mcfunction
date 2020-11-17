
function call_stack:push
data modify storage call_stack: this.items set from storage call_stack: this.arg0

data modify storage call_stack: this.result set value []
execute if data storage call_stack: this.items[0] run data modify storage call_stack: call.arg0 set from storage call_stack: this.items
execute if data storage call_stack: this.items[0] run data modify storage call_stack: call.arg1 set value []
execute if data storage call_stack: this.items[0] run function dt.crafting_util:internal/ingredient/get_info_obj_loop
execute if data storage call_stack: this.items[0] run data modify storage call_stack: this.result set from storage call_stack: call.result

function call_stack:pop