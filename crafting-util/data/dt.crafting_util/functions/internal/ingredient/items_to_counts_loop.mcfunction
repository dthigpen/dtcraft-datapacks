function call_stack:push
data modify storage call_stack: this.items set from storage call_stack: this.arg0
data modify storage call_stack: this.counts set from storage call_stack: this.arg1

execute if data storage call_stack: this.items[0].Count store result storage call_stack: this.count byte 1 run data get storage call_stack: this.items[0].Count
execute if data storage call_stack: this.items[0].Count run data modify storage call_stack: this.counts append from storage call_stack: this.count

data remove storage call_stack: this.items[0]

execute unless data storage call_stack: this.items[0] run data modify storage call_stack: this.result set from storage call_stack: this.counts
execute if data storage call_stack: this.items[0] run data modify storage call_stack: call.arg0 set from storage call_stack: this.items
execute if data storage call_stack: this.items[0] run data modify storage call_stack: call.arg1 set from storage call_stack: this.counts
execute if data storage call_stack: this.items[0] run function dt.crafting_util:internal/ingredient/items_to_counts_loop
execute if data storage call_stack: this.items[0] run data modify storage call_stack: this.result set from storage call_stack: call.result

function call_stack:pop