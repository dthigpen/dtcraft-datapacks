function call_stack:push

# only craft if there are no stacks
function dt.autocraft:internal/util/get_items_from_block_or_entity
data modify storage call_stack: call.arg0 set from storage call_stack: call.result
function dt.autocraft:internal/blocks/autocrafter/crafting/can_craft
data modify storage call_stack: this.can_craft set from storage call_stack: call.result

execute if data storage call_stack: {this:{can_craft:true}} run function dt.autocraft:internal/blocks/autocrafter/db_data/fetch_or_init
execute if data storage call_stack: {this:{can_craft:true}} run data modify storage call_stack: this.autocrafter_data set from storage call_stack: call.result

execute if data storage call_stack: {this:{can_craft:true}} run data modify storage call_stack: call.arg0 set from block ~ ~ ~ Items
execute if data storage call_stack: {this:{can_craft:true}} run data modify storage call_stack: call.arg1 set from storage call_stack: this.autocrafter_data
execute if data storage call_stack: {this:{can_craft:true}} run function dt.autocraft:internal/blocks/autocrafter/crafting/do_craft

function call_stack:pop