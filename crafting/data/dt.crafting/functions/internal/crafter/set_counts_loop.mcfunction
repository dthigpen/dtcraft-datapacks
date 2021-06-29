function call_stack:push

data modify storage call_stack: this.temp_items set from storage call_stack: this.arg0
data modify storage call_stack: this.counts set from storage call_stack: this.arg1
data modify storage call_stack: this.with_counts set from storage call_stack: this.arg2

execute if data storage call_stack: this.counts[0] store result storage call_stack: this.temp_items[0].Count byte 1 run data get storage call_stack: this.counts[0]
data modify storage call_stack: this.with_counts append from storage call_stack: this.temp_items[0]

data remove storage call_stack: this.counts[0]
data remove storage call_stack: this.temp_items[0]

execute unless data storage call_stack: this.temp_items[0] run data modify storage call_stack: this.result set from storage call_stack: this.with_counts
execute if data storage call_stack: this.temp_items[0] run data modify storage call_stack: call.arg0 set from storage call_stack: this.temp_items
execute if data storage call_stack: this.temp_items[0] run data modify storage call_stack: call.arg1 set from storage call_stack: this.counts
execute if data storage call_stack: this.temp_items[0] run data modify storage call_stack: call.arg2 set from storage call_stack: this.with_counts
execute if data storage call_stack: this.temp_items[0] run function dt.crafting:internal/crafter/set_counts_loop
execute if data storage call_stack: this.temp_items[0] run data modify storage call_stack: this.result set from storage call_stack: call.result
function call_stack:pop