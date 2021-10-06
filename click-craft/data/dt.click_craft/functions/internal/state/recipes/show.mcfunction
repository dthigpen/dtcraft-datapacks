say Compiling recipes...
function call_stack:push

function dt.click_craft:internal/database/fetch_or_init
data modify storage call_stack: this.data set from storage call_stack: call.return

data modify storage call_stack: this.item_ids set value []
data modify storage call_stack: this.item_ids append from storage call_stack: this.data.craft_with[].name

data modify storage call_stack: call.arg0 set from entity @s Inventory
data modify storage call_stack: call.arg1 set from storage call_stack: this.item_ids
function dt.click_craft:internal/state/recipes/filter_items_with_ids_loop
data modify storage call_stack: this.filtered_items set from storage call_stack: call.return

# data modify storage call_stack: call.arg0 set from storage call_stack: this.filtered_items
# function dt.crafting:internal/model/ingredients/from_items
# data modify storage call_stack: this.ingredients set from storage call_stack: call.return.items

# data modify storage call_stack: call.arg0 set from storage call_stack: this.ingredients

tellraw @p ["show.mcfunction: ",{"nbt":"this.filtered_items","storage":"call_stack:"}]
data modify storage call_stack: this.data.recipes set value []
execute unless data storage call_stack: this.data.recipes[0] run tellraw @s "No recipes found with the given ingredients."
data modify storage call_stack: this.recipe_results set value []
data modify storage call_stack: this.recipe_results append from storage call_stack: this.data.recipes[].result
data modify storage call_stack: call.arg0 set from storage call_stack: this.recipe_results
data modify storage call_stack: call.arg1 set value []

function dt.click_craft:internal/state/select/items_to_display_items
data modify storage call_stack: this.display_items set from storage call_stack: call.return

data modify storage call_stack: call.arg0 set from storage call_stack: this.display_items
function dt.click_craft:internal/print/display_items_loop

function call_stack:pop