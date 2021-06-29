function call_stack:push
data modify storage call_stack: this.tags set from storage call_stack: this.arg0
data modify storage call_stack: this.item_counts set from storage call_stack: this.arg1

data modify storage call_stack: this.result set value false
execute if data storage call_stack: this.tags[0] if data storage call_stack: this.item_counts[0] run data modify storage call_stack: call.arg0 set from storage call_stack: this.tags
execute if data storage call_stack: this.tags[0] if data storage call_stack: this.item_counts[0] run data modify storage call_stack: call.arg1 set from storage call_stack: this.item_counts
execute if data storage call_stack: this.tags[0] if data storage call_stack: this.item_counts[0] run function dt.crafting:internal/recipe/resolve_tags_item_loop
execute if data storage call_stack: this.tags[0] if data storage call_stack: this.item_counts[0] run data modify storage call_stack: this.result set from storage call_stack: call.result
function call_stack:pop