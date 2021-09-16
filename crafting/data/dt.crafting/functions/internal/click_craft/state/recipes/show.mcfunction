say Compiling recipes...
function call_stack:push

function dt.crafting:internal/click_craft/database/fetch_or_init
data modify storage call_stack: this.data set from storage call_stack: call.result

data modify storage call_stack: this.item_ids set value []
data modify storage call_stack: this.item_ids append from storage call_stack: this.data.craft_with[].name

data modify storage call_stack: call.arg0 set from entity @s Inventory
data modify storage call_stack: call.arg1 set from storage call_stack: this.item_ids
function dt.crafting:internal/click_craft/state/recipes/filter_items_with_ids_loop
data modify storage call_stack: this.filtered_items set from storage call_stack: call.result

data modify storage call_stack: call.arg0 set from storage call_stack: this.filtered_items
function dt.crafting:internal/model/ingredients/from_items
data modify storage call_stack: this.ingredients set from storage call_stack: call.result.items

data modify storage call_stack: call.arg0 set from storage dt.crafting: recipes
data modify storage call_stack: call.arg1 set from storage call_stack: this.ingredients
function dt.crafting:api/recipe/find_recipe_loop
data modify storage call_stack: this.recipe set from storage call_stack: call.result

tellraw @p ["show.mcfunction: ",{"nbt":"this.recipe.result","storage":"call_stack:"}]
data modify storage call_stack: this.data.recipes set value []
execute unless data storage call_stack: this.data.recipes[0] run tellraw @s "No recipes found with the given ingredients."
data modify storage call_stack: this.recipe_results set value []
data modify storage call_stack: this.recipe_results append from storage call_stack: this.data.recipes[].result
data modify storage call_stack: call.arg0 set from storage call_stack: this.recipe_results
data modify storage call_stack: call.arg1 set value []
function dt.crafting:internal/click_craft/state/select/items_to_display_items
data modify storage call_stack: this.display_items set from storage call_stack: call.result

data modify storage call_stack: call.arg0 set from storage call_stack: this.display_items
function dt.crafting:internal/click_craft/print/display_items_loop

function call_stack:pop