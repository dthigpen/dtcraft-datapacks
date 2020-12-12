function call_stack:push

data modify storage call_stack: this.tagged_items set from storage call_stack: this.arg0

execute if data storage call_stack: this.tagged_items[0] run data modify storage call_stack: call.arg0 set from storage call_stack: this.tagged_items
execute if data storage call_stack: this.tagged_items[0] run data modify storage call_stack: call.arg1 set value []
execute if data storage call_stack: this.tagged_items[0] run data modify storage call_stack: call.arg2 set value []
execute if data storage call_stack: this.tagged_items[0] run data modify storage call_stack: call.arg3 set from block ~ ~ ~ Items
execute if data storage call_stack: this.tagged_items[0] run function dt.autocraft:internal/blocks/autocrafter/placeholders/add_back_tagged_items_loop
execute if data storage call_stack: this.tagged_items[0] run data modify storage call_stack: this.remaining_tags set from storage call_stack: call.result.remaining_tags
execute if data storage call_stack: this.tagged_items[0] run data modify storage call_stack: this.new_items set from storage call_stack: call.result.new_items

execute if data storage call_stack: this.tagged_items[0] run data modify block ~ ~ ~ Items set from storage call_stack: this.new_items
execute if data storage call_stack: this.tagged_items[0] run data modify storage call_stack: this.result set from storage call_stack: this.remaining_tags
#execute if data storage call_stack: this.tagged_items[0] run tellraw @p [{"nbt":"this.new_items[{Slot:0b}]","storage":"call_stack:"}]

function call_stack:pop