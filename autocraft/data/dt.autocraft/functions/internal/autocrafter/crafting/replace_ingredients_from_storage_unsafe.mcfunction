execute if data storage call_stack: this.autocrafter_data.new_ingredients run data modify storage call_stack: call.arg0 set from storage call_stack: this.autocrafter_data.new_ingredients
execute if data storage call_stack: this.autocrafter_data.new_ingredients run function dt.autocraft:internal/autocrafter/crafting/set_ingredients
data remove storage call_stack: this.autocrafter_data.new_ingredients
data remove storage call_stack: this.autocrafter_data.result_placeholder
