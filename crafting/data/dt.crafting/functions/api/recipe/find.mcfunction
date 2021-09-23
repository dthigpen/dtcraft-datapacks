#> dt.crafting:api/recipe/find
# find a matching recipe from the given item list using all recipes in the game
# @params
#   storage call_stack: call.arg0  
#       array of items from crafter to be checked for the first matching recipe
# @output
#   storage call_stack: call.return
#       the recipe data for the given items or an empty object if none is found

# say recipe/find
function call_stack:push

data modify storage call_stack: this.actual_items set from storage call_stack: this.arg0
data modify storage call_stack: call.arg0 set from storage call_stack: this.actual_items
function dt.crafting:internal/model/ingredients/from_items
data modify storage call_stack: this.item_counts set from storage call_stack: call.return.items

execute store result score $size dt.tmp run data get storage call_stack: this.actual_items

data modify storage call_stack: this.return set value {}
execute if score $size dt.tmp matches 1..9 run data modify storage call_stack: this.valid_count set value true

execute if data storage call_stack: this.valid_count run data modify storage call_stack: call.arg0 set from storage call_stack: this.item_counts
execute if data storage call_stack: this.valid_count run function dt.crafting:internal/recipe/find_from_info_obj
execute if data storage call_stack: this.valid_count run data modify storage call_stack: this.recipe_result set from storage call_stack: call.return
execute if data storage call_stack: this.valid_count run data modify storage call_stack: this.return set from storage call_stack: call.return

function call_stack:pop