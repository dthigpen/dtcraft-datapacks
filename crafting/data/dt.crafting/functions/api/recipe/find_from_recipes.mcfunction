#> dt.crafting:api/recipe/find_from_recipes
# find a matching recipe from the given item list configuration from a set of recipes
# @params
#   storage call_stack: call.arg0
#       array of ingredient items
#   storage call_stack: call.arg1
#       array of recipe objects
# @output
#   storage call_stack: call.return
#       Matching recipe object or empty object if no match
function call_stack:push
data modify storage call_stack: this.actual_items set from storage call_stack: this.arg0
data modify storage call_stack: this.recipes set from storage call_stack: this.arg1

data modify storage call_stack: call.arg0 set from storage call_stack: this.actual_items
function dt.crafting:internal/model/ingredients/from_items
data modify storage call_stack: this.item_counts set from storage call_stack: call.return.items

data modify storage call_stack: this.return set value {}

execute unless data storage call_stack: this.return.id if data storage call_stack: this.recipes[0] run data modify storage call_stack: call.arg0 set from storage call_stack: this.recipes
execute unless data storage call_stack: this.return.id if data storage call_stack: this.recipes[0] run data modify storage call_stack: call.arg1 set from storage call_stack: this.item_counts
execute unless data storage call_stack: this.return.id if data storage call_stack: this.recipes[0] run function dt.crafting:internal/recipe/find_recipe_loop
execute unless data storage call_stack: this.return.id if data storage call_stack: this.recipes[0] run data modify storage call_stack: this.return set from storage call_stack: call.return

function call_stack:pop