function call_stack:push

function dt.autocraft:internal/autocrafter/database/fetch_or_init
data modify storage call_stack: this.autocrafter_data set from storage call_stack: call.return
say finda nd replace
tellraw @p ["find_and_replace_placeholder this.autocrafter_data.state_data.ingredients[0]: ",{"nbt":"this.autocrafter_data.state_data.ingredients[0]","storage":"call_stack:"}]
# ## case 1: had previous result that was removed. Now decrement the ingredients and continue to case 2.
execute if data storage call_stack: this.autocrafter_data.state_data.ingredients run say player took the result!
execute if data storage call_stack: this.autocrafter_data.state_data.ingredients run data modify storage call_stack: call.arg0 set from storage call_stack: this.autocrafter_data.state_data.ingredients
execute if data storage call_stack: this.autocrafter_data.state_data.ingredients run function dt.autocraft:internal/autocrafter/crafting/set_ingredients
execute if data storage call_stack: this.autocrafter_data.state_data.ingredients run data remove storage call_stack: this.autocrafter_data.state_data

data modify storage call_stack: call.arg0 set from storage call_stack: this.autocrafer_data
function dt.autocraft:internal/autocrafter/database/save

# say find and replace placeholder, then craft again
data remove storage call_stack: this.autocrafter_data.state_data
function dt.autocraft:internal/autocrafter/crafting/create_result_placeholder



function call_stack:pop