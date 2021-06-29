function call_stack:push
# say recipe ing loop

data modify storage call_stack: this.recipe_items set from storage call_stack: this.arg0
data modify storage call_stack: this.item_counts set from storage call_stack: this.arg1

data modify storage call_stack: call.arg0 set from storage call_stack: this.recipe_items[0]
data modify storage call_stack: call.arg1 set from storage call_stack: this.item_counts[0]
function dt.crafting:is_matching_item



data remove storage call_stack: this.recipe_items[0]
data remove storage call_stack: this.item_counts[0]
data modify storage call_stack: call.arg0 set from storage call_stack: this.recipe_items
data modify storage call_stack: call.arg1 set from storage call_stack: this.item_counts
execute store result score size1 dt.tmp run data get storage call_stack: this.recipe_items
execute store result score size2 dt.tmp run data get storage call_stack: this.item_counts
execute if score result dt.tmp = #equal dt.enum if score size1 dt.tmp matches 1.. if score size2 dt.tmp matches 1.. run function dt.crafting:internal/recipe/compare_ing_counts_loop
execute if score result dt.tmp = #not_equal dt.enum run data modify storage call_stack: this.result set value {}

function call_stack:pop