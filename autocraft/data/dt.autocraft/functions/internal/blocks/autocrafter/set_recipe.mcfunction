function call_stack:push
data modify storage call_stack: this.recipes_name set value ""
data modify storage call_stack: this.data set value {recipes:[],name:""}
data modify storage call_stack: this.data.name set from block ~ ~ ~ CustomName
execute unless data block ~ ~ ~ {CustomName:'{"text":"Autocrafter"}'} run data modify storage call_stack: call.arg0 set from block ~ ~ ~ CustomName
execute unless data block ~ ~ ~ {CustomName:'{"text":"Autocrafter"}'} run function dt.autocraft:internal/blocks/autocrafter/get_recipes_name_from_block
execute unless data block ~ ~ ~ {CustomName:'{"text":"Autocrafter"}'} run data modify storage call_stack: this.data.recipes set from storage call_stack: call.result

data modify storage call_stack: call.arg0 set from storage call_stack: this.data
function dt.autocraft:internal/blocks/autocrafter/sava_data

function call_stack:pop