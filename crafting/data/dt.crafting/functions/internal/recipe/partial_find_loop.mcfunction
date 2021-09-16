function call_stack:push
data modify storage call_stack: this.recipes set from storage call_stack: this.arg0
data modify storage call_stack: this.items set from storage call_stack: this.arg1
data modify storage call_stack: this.matches set from storage call_stack: this.arg2

data modify storage call_stack: this.item_ids set value []
data modify storage call_stack: this.item_ids append from storage call_stack: this.items[].id

data modify storage call_stack: this.recipe_ids set value []
data modify storage call_stack: this.recipe_ids append from storage call_stack: this.recipes[0].ingredients[].id

# Check id ingredients first
data modify storage call_stack: call.arg0 set from storage call_stack: this.item_ids
data modify storage call_stack: call.arg1 set from storage call_stack: this.recipe_ids
function dt.array:api/difference
data modify storage call_stack: this.remaining_item_ids set from storage call_stack: call.result

data modify storage call_stack: this.recipe_tags set value []
data modify storage call_stack: this.recipe_tags append from storage call_stack: this.recipes[0].ingredients[].tag

# tags
execute if data storage call_stack: this.recipe_tags[0] if data storage call_stack: this.remaining_item_ids[0] run data modify storage call_stack: call.arg0 set from storage call_stack: this.recipe_tags
execute if data storage call_stack: this.recipe_tags[0] if data storage call_stack: this.remaining_item_ids[0] run data modify storage call_stack: call.arg1 set from storage call_stack: this.remaining_item_ids
execute if data storage call_stack: this.recipe_tags[0] if data storage call_stack: this.remaining_item_ids[0] run function dt.crafting:internal/recipe/resolve_groups_loop
execute if data storage call_stack: this.recipe_tags[0] if data storage call_stack: this.remaining_item_ids[0] run data modify storage call_stack: this.remaining_item_ids set from storage call_stack: call.result

# execute unless data storage call_stack: this.remaining_item_ids[0] run tellraw @p ["partial_find_loop.mcfunction: adding ",{"nbt":"this.recipes[0].result.id","storage":"call_stack:"}]
execute unless data storage call_stack: this.remaining_item_ids[0] run data modify storage call_stack: this.matches append from storage call_stack: this.recipes[0]

data remove storage call_stack: this.recipes[0]

execute unless data storage call_stack: this.recipes[0] run data modify storage call_stack: this.result set from storage call_stack: this.matches
execute if data storage call_stack: this.recipes[0] run data modify storage call_stack: call.arg0 set from storage call_stack: this.recipes
execute if data storage call_stack: this.recipes[0] run data modify storage call_stack: call.arg1 set from storage call_stack: this.items
execute if data storage call_stack: this.recipes[0] run data modify storage call_stack: call.arg2 set from storage call_stack: this.matches
execute if data storage call_stack: this.recipes[0] run function dt.crafting:internal/recipe/partial_find_loop
execute if data storage call_stack: this.recipes[0] run data modify storage call_stack: this.result set from storage call_stack: call.result

function call_stack:pop
