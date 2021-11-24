function call_stack:push
data modify storage call_stack: this.items set from storage call_stack: this.arg0
data modify storage call_stack: this.untagged set from storage call_stack: this.arg1

data modify storage call_stack: this.item set from storage call_stack: this.items[0]
function dt.autocraft:internal/autocrafter/placeholders/remove_item_tag_unsafe
data modify storage call_stack: this.untagged append from storage call_stack: this.item

data remove storage call_stack: this.items[0]

execute unless data storage call_stack: this.items[0] run data modify storage call_stack: this.return set from storage call_stack: this.untagged
execute if data storage call_stack: this.items[0] run data modify storage call_stack: call.arg0 set from storage call_stack: this.items
execute if data storage call_stack: this.items[0] run data modify storage call_stack: call.arg1 set from storage call_stack: this.untagged
execute if data storage call_stack: this.items[0] run function dt.autocraft:internal/autocrafter/placeholders/remove_tags_from_block_loop
execute if data storage call_stack: this.items[0] run data modify storage call_stack: this.return set from storage call_stack: call.return

function call_stack:pop