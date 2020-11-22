function call_stack:push
data modify storage call_stack: this.recipes_name set value ""
execute unless data block ~ ~ ~ {CustomName:'{"text":"Autocrafter"}'} run data modify storage call_stack: call.arg0 set from block ~ ~ ~ CustomName
execute unless data block ~ ~ ~ {CustomName:'{"text":"Autocrafter"}'} run function autocraft:internal/blocks/autocrafter/get_recipes_name_from_block
execute unless data block ~ ~ ~ {CustomName:'{"text":"Autocrafter"}'} run data modify storage call_stack: this.recipes set from storage call_stack: call.result
#execute unless data block ~ ~ ~ {CustomName:'{"text":"Autocrafter"}'} run tellraw @p {"nbt":"this.recipes","storage": "call_stack:"}
execute if data storage call_stack: this.recipes[0] run data modify storage call_stack: call.arg0 append from storage call_stack: this.recipes
execute if data storage call_stack: this.recipes[0] run function autocraft:internal/blocks/autocrafter/save_data
function call_stack:pop