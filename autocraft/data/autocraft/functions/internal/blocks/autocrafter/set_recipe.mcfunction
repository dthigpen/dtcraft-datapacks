function call_stack:push
data modify storage call_stack: this.recipes_name set value ""
data modify storage call_stack: this.recipes set value []
execute unless data block ~ ~ ~ {CustomName:'{"text":"Autocrafter"}'} run data modify storage call_stack: call.arg0 set from block ~ ~ ~ CustomName
execute unless data block ~ ~ ~ {CustomName:'{"text":"Autocrafter"}'} run function autocraft:internal/blocks/autocrafter/get_recipes_name_from_block
execute unless data block ~ ~ ~ {CustomName:'{"text":"Autocrafter"}'} run data modify storage call_stack: this.recipes set from storage call_stack: call.result

data modify storage call_stack: call.arg0 set from storage call_stack: this.recipes
function autocraft:internal/blocks/autocrafter/sava_data

function autocraft:internal/blocks/autocrafter/fetch_or_init_data

function call_stack:pop