data remove storage call_stack: this.autocrafter_data.new_ingredients
data remove storage call_stack: this.autocrafter_data.result_placeholder
data remove block ~ ~ ~ Items[{Slot:15b}]

## compute new recipe ingredients and result
data modify storage call_stack: call.arg0 set from storage call_stack: this.ingredients
function dt.crafting:api/craft/from_items
data modify storage call_stack: this.new_ingredients set from storage call_stack: call.return[0]
data modify storage call_stack: this.new_recipe_result set from storage call_stack: call.return[1][0]
execute if data storage call_stack: this.new_recipe_result run data modify storage call_stack: this.new_recipe_result.Slot set value 15b
execute if data storage call_stack: this.new_recipe_result run data modify storage call_stack: this.new_recipe_result.tag.dt.type set value "result_placeholder"
execute if data storage call_stack: this.new_recipe_result run data modify block ~ ~ ~ Items append from storage call_stack: this.new_recipe_result
## update storage
execute if data storage call_stack: this.new_recipe_result run data modify storage call_stack: this.autocrafter_data.result_placeholder set from storage call_stack: this.new_recipe_result
execute if data storage call_stack: this.new_recipe_result run data modify storage call_stack: this.autocrafter_data.new_ingredients set from storage call_stack: this.new_ingredients