#> dt.crafting:api/recipe/find
# find a matching recipe from the given item list using all recipes in the game
# @params
#   storage call_stack: call.arg0  
#       array of items from crafter to be checked for the first matching recipe
# @output
#   storage call_stack: call.result
#       the recipe data for the given items or an empty object if none is found

# say recipe/find
function call_stack:push

data modify storage call_stack: this.actual_items set from storage call_stack: this.arg0

data modify storage call_stack: call.arg0 set from storage call_stack: this.actual_items
function dt.crafting:internal/ingredient/get_info_obj
data modify storage call_stack: this.item_counts set from storage call_stack: call.result.items

execute store result score $size dt.tmp run data get storage call_stack: this.actual_items

data modify storage call_stack: this.result set value {}
execute if score $size dt.tmp matches 1..9 run data modify storage call_stack: this.valid_count set value true
execute if score $size dt.tmp matches 1 run data modify storage call_stack: call.arg0 set from storage dt.crafting: num_ingredients.1
execute if score $size dt.tmp matches 2 run data modify storage call_stack: call.arg0 set from storage dt.crafting: num_ingredients.2
execute if score $size dt.tmp matches 3 run data modify storage call_stack: call.arg0 set from storage dt.crafting: num_ingredients.3
execute if score $size dt.tmp matches 4 run data modify storage call_stack: call.arg0 set from storage dt.crafting: num_ingredients.4
execute if score $size dt.tmp matches 5 run data modify storage call_stack: call.arg0 set from storage dt.crafting: num_ingredients.5
execute if score $size dt.tmp matches 6 run data modify storage call_stack: call.arg0 set from storage dt.crafting: num_ingredients.6
execute if score $size dt.tmp matches 7 run data modify storage call_stack: call.arg0 set from storage dt.crafting: num_ingredients.7
execute if score $size dt.tmp matches 8 run data modify storage call_stack: call.arg0 set from storage dt.crafting: num_ingredients.8
execute if score $size dt.tmp matches 9 run data modify storage call_stack: call.arg0 set from storage dt.crafting: num_ingredients.9
execute if data storage call_stack: this.valid_count run data modify storage call_stack: call.arg1 set from storage call_stack: this.item_counts
execute if data storage call_stack: this.valid_count run function dt.crafting:internal/recipe/find_recipe_loop
execute if data storage call_stack: this.valid_count run data modify storage call_stack: this.result set from storage call_stack: call.result

function call_stack:pop