
function call_stack:push
data modify storage call_stack: this.items set from storage call_stack: this.arg0

data modify storage call_stack: this.result set value {items:[]}
execute if data storage call_stack: this.items[0] run data modify storage call_stack: call.arg0 set from storage call_stack: this.items
execute if data storage call_stack: this.items[0] run data modify storage call_stack: call.arg1 set value []
execute if data storage call_stack: this.items[0] run function dt.crafting:internal/ingredient/get_info_obj_loop
execute if data storage call_stack: this.items[0] run data modify storage call_stack: this.result set from storage call_stack: call.result
execute if data storage call_stack: this.items[0] store result storage call_stack: this.result.unique_count int 1 run data get storage call_stack: this.result.items
execute if data storage call_stack: this.items[0] run data modify storage call_stack: this.counts set value []
execute if data storage call_stack: this.items[0] run data modify storage call_stack: this.counts append from storage call_stack: this.result.items[].count
execute if data storage call_stack: this.items[0] run data modify storage call_stack: call.arg0 set from storage call_stack: this.counts
execute if data storage call_stack: this.items[0] run function dt.array:api/math/sum
execute if data storage call_stack: this.items[0] run data modify storage call_stack: this.result.total_count set from storage call_stack: call.result

function call_stack:pop