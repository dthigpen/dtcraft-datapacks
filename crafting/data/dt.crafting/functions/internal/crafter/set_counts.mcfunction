function call_stack:push

data modify storage call_stack: this.temp_items set from storage call_stack: this.arg0
data modify storage call_stack: this.counts set from storage call_stack: this.arg1

execute unless data storage call_stack: this.temp_items[0] run data modify storage call_stack: this.return set from storage call_stack: this.temp_items
execute if data storage call_stack: this.temp_items[0] run data modify storage call_stack: call.arg0 set from storage call_stack: this.temp_items
execute if data storage call_stack: this.temp_items[0] run data modify storage call_stack: call.arg1 set from storage call_stack: this.counts
execute if data storage call_stack: this.temp_items[0] run data modify storage call_stack: call.arg2 set value []
execute if data storage call_stack: this.temp_items[0] run function dt.crafting:internal/crafter/set_counts_loop
execute if data storage call_stack: this.temp_items[0] run data modify storage call_stack: this.return set from storage call_stack: call.return
function call_stack:pop