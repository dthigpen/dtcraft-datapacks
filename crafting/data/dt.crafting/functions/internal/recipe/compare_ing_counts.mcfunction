function call_stack:push
# say compare_recipe
data modify storage call_stack: this.recipe_items set from storage call_stack: this.arg0
data modify storage call_stack: this.item_counts set from storage call_stack: this.arg1

execute store result score size1 dt.tmp run data get storage dt.crafting: this.recipe_items
execute store result score size2 dt.tmp run data get storage dt.crafting: this.item_counts

execute if score size1 dt.tmp = size2 dt.tmp if score size1 dt.tmp matches 1.. run data modify storage call_stack: call.arg0 set from storage dt.crafting: this.recipe_items
execute if score size1 dt.tmp = size2 dt.tmp if score size1 dt.tmp matches 1.. run data modify storage call_stack: call.arg1 set from storage dt.crafting: this.item_counts
execute if score size1 dt.tmp = size2 dt.tmp if score size1 dt.tmp matches 1.. run function dt.crafting:internal/recipe/compare_ing_counts_loop

function call_stack:pop
