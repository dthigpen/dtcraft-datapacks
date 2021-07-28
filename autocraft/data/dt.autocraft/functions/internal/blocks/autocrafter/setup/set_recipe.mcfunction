function call_stack:push

function dt.autocraft:internal/blocks/autocrafter/db_data/fetch_or_init
data modify storage call_stack: this.data set from storage call_stack: call.result

data modify storage call_stack: this.data.name set from block ~ ~ ~ CustomName
# If its a custom autocrafter, set the recipe
execute unless data block ~ ~ ~ {CustomName:'{"text":"Autocrafter"}'} run data modify storage call_stack: this.data.is_item_specific set value true
execute unless data block ~ ~ ~ {CustomName:'{"text":"Autocrafter"}'} run data modify storage call_stack: call.arg0 set from block ~ ~ ~ CustomName
execute unless data block ~ ~ ~ {CustomName:'{"text":"Autocrafter"}'} run function dt.autocraft:internal/blocks/autocrafter/setup/get_recipes_name_from_block
execute unless data block ~ ~ ~ {CustomName:'{"text":"Autocrafter"}'} run data modify storage call_stack: this.data.recipes set from storage call_stack: call.result

data modify storage call_stack: call.arg0 set from storage call_stack: this.data
function dt.autocraft:internal/blocks/autocrafter/db_data/save

function call_stack:pop