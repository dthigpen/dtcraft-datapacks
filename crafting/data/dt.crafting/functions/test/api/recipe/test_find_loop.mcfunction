function call_stack:push
data modify storage call_stack: this.temp_recipes set from storage call_stack: this.arg0

data modify storage call_stack: call.arg0 set from storage call_stack: this.temp_recipes[0].result.id
data modify storage call_stack: call.arg1 set from storage call_stack: this.temp_recipes[0].mock
data modify storage call_stack: call.arg2 set from storage call_stack: this.temp_recipes[0]
function dt.crafting:test/internal/recipe/test_find_generic

data remove storage call_stack: this.temp_recipes[0]
execute if data storage call_stack: this.temp_recipes[0] run data modify storage call_stack: call.arg0 set from storage call_stack: this.temp_recipes
execute if data storage call_stack: this.temp_recipes[0] run function dt.crafting:test/internal/recipe/test_find_loop

function call_stack:pop