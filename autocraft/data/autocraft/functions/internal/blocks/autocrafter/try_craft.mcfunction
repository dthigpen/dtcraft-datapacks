function call_stack:push

# only craft if there are no stacks
data modify storage call_stack: call.arg0 set from block ~ ~ ~ Items
function autocraft:internal/blocks/autocrafter/can_craft
data modify storage call_stack: this.can_craft set from storage call_stack: call.result

execute if data storage call_stack: {this:{can_craft:true}} run function autocraft:internal/blocks/autocrafter/fetch_or_init_data
execute if data storage call_stack: {this:{can_craft:true}} run data modify storage call_stack: this.recipes set from storage call_stack: call.result

execute if data storage call_stack: {this:{can_craft:true}} run data modify storage call_stack: call.arg0 set from block ~ ~ ~ Items
execute if data storage call_stack: {this:{can_craft:true}} run data modify storage call_stack: call.arg1 set from storage call_stack: this.recipes
execute if data storage call_stack: {this:{can_craft:true}} run function autocraft:internal/blocks/autocrafter/do_craft

function call_stack:pop