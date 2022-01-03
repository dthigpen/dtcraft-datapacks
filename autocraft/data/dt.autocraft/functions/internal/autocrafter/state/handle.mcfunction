function call_stack:push
# always do these things

# distribute items, get crafting recipe result
data modify storage call_stack: this.recipe_result set from block ~ ~ ~ Items[{Slot:15b}]
data remove block ~ ~ ~ Items[{Slot:15b}]
data modify storage call_stack: call.arg0 set from block ~ ~ ~ Items
function dt.crafting:api/crafter/distribute_items
data modify block ~ ~ ~ Items set from storage call_stack: call.return
data modify block ~ ~ ~ Items append from storage call_stack: this.recipe_result

function dt.autocraft:internal/autocrafter/database/item_frame/fetch_or_init
data modify storage call_stack: this.autocrafter_data set from storage call_stack: call.return

# Get crafting grid items
function dt.autocraft:internal/util/get_crafting_grid_items
data modify storage call_stack: this.ingredients set from storage call_stack: call.return

## replace placeholder if possible
# execute if data storage call_stack: this.autocrafter_data.result_placeholder run say has result
# execute unless data storage call_stack: this.autocrafter_data.result_placeholder run say no result
execute if data storage call_stack: this.autocrafter_data.result_placeholder run function dt.autocraft:internal/autocrafter/state/check_for_changed_result_unsafe

## Check that the ingredients changed before recalculating anything
function dt.autocraft:internal/util/get_crafting_grid_items
data modify storage call_stack: this.ingredients set from storage call_stack: call.return
data modify storage call_stack: call.arg0 set from storage call_stack: this.ingredients
data remove storage call_stack: call.arg0[].Count
data modify storage call_stack: call.arg1 set from storage call_stack: this.autocrafter_data.ingredients
data remove storage call_stack: call.arg1[].Count
# tellraw @p ["handle call.arg0: ",{"nbt":"call.arg0","storage":"call_stack:"}]
# tellraw @p ["handle call.arg1: ",{"nbt":"call.arg1","storage":"call_stack:"}]
function dt.array:api/helper/are_equal
execute unless data storage call_stack: call.return run data modify storage call_stack: this.changed_ingredients set value true
# tellraw @p ["handle this.changed_ingredients: ",{"nbt":"this.changed_ingredients","storage":"call_stack:"}]
## Conditions for creating a new result placeholder
execute if data storage call_stack: this.changed_ingredients run function dt.autocraft:internal/autocrafter/state/create_result_placeholder_unsafe
# execute unless data storage call_stack: this.changed_ingredients unless data block ~ ~ ~ Items[{Slot:15b}] run function dt.autocraft:internal/autocrafter/state/create_result_placeholder_unsafe

data modify storage call_stack: this.autocrafter_data.ingredients set from storage call_stack: this.ingredients

data modify storage call_stack: call.arg0 set from storage call_stack: this.autocrafter_data
function dt.autocraft:internal/autocrafter/database/item_frame/save

function call_stack:pop