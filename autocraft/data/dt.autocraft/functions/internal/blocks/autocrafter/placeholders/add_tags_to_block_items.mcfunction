function call_stack:push

data modify storage call_stack: this.items set from block ~ ~ ~ Items

execute if data storage call_stack: this.items[0] run data modify storage call_stack: call.arg0 set from storage call_stack: this.items
execute if data storage call_stack: this.items[0] run data modify storage call_stack: call.arg1 set value []
execute if data storage call_stack: this.items[0] run function dt.autocraft:internal/blocks/autocrafter/placeholders/add_tags_to_items_loop
execute if data storage call_stack: this.items[0] run data modify block ~ ~ ~ Items set from storage call_stack: call.return

function call_stack:pop