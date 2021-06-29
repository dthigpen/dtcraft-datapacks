# say recipe/find
function call_stack:push
data modify storage call_stack: this.actual_items set from storage call_stack: this.arg0
data modify storage call_stack: this.recipes set from storage call_stack: this.arg1

data modify storage call_stack: call.arg0 set from storage call_stack: this.actual_items
function dt.crafting:internal/ingredient/get_info_obj
data modify storage call_stack: this.item_counts set from storage call_stack: call.result

data modify storage call_stack: this.result set value {}

execute unless data storage call_stack: this.result.id if data storage call_stack: this.recipes[0] run data modify storage call_stack: call.arg0 set from storage call_stack: this.recipes
execute unless data storage call_stack: this.result.id if data storage call_stack: this.recipes[0] run data modify storage call_stack: call.arg1 set from storage call_stack: this.item_counts
execute unless data storage call_stack: this.result.id if data storage call_stack: this.recipes[0] run function dt.crafting:internal/recipe/find_recipe_loop
execute unless data storage call_stack: this.result.id if data storage call_stack: this.recipes[0] run data modify storage call_stack: this.result set from storage call_stack: call.result

function call_stack:pop