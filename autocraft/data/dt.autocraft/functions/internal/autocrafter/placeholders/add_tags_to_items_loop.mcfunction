function call_stack:push
data modify storage call_stack: this.items set from storage call_stack: this.arg0
data modify storage call_stack: this.tagged set from storage call_stack: this.arg1

data modify storage call_stack: call.arg0 set from storage call_stack: this.items[0]
function dt.autocraft:internal/autocrafter/placeholders/add_tag_to_item
data modify storage call_stack: this.tagged append from storage call_stack: call.return
data remove storage call_stack: this.items[0]

execute unless data storage call_stack: this.items[0] run data modify storage call_stack: this.return set from storage call_stack: this.tagged
execute if data storage call_stack: this.items[0] run data modify storage call_stack: call.arg0 set from storage call_stack: this.items
execute if data storage call_stack: this.items[0] run data modify storage call_stack: call.arg1 set from storage call_stack: this.tagged
execute if data storage call_stack: this.items[0] run function dt.autocraft:internal/autocrafter/placeholders/add_tags_to_items_loop
execute if data storage call_stack: this.items[0] run data modify storage call_stack: this.return set from storage call_stack: call.return

function call_stack:pop