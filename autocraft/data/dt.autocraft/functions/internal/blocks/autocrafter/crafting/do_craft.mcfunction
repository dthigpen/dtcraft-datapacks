function call_stack:push
data modify storage call_stack: this.items set from storage call_stack: this.arg0
data modify storage call_stack: this.autocrafter_data set from storage call_stack: this.arg1
data modify storage call_stack: this.cached_recipes set from storage call_stack: this.autocrafter_data.recipes

data modify storage call_stack: this.recipe_result set value {}
data modify storage call_stack: call.arg0 set from storage call_stack: this.items
execute if data storage call_stack: this.cached_recipes[0] run data modify storage call_stack: call.arg1 set from storage call_stack: this.cached_recipes
execute if data storage call_stack: this.cached_recipes[0] run function dt.crafting:api/recipe/find_from_recipes
execute unless data storage call_stack: this.cached_recipes[0] run function dt.crafting:api/recipe/find
execute run data modify storage call_stack: this.recipe_result set from storage call_stack: call.result

data modify storage call_stack: this.empty_cache set value true
execute if data storage call_stack: this.cached_recipes[0] run data modify storage call_stack: this.empty_cache set value false
# if it was not in the cache but was found exhaustively, prepend it to the cache and save it
execute if data storage call_stack: {this:{empty_cache:true}} if data storage call_stack: this.recipe_result.result.id run data modify storage call_stack: this.cached_recipes prepend from storage call_stack: this.recipe_result 
execute if data storage call_stack: {this:{empty_cache:true}} if data storage call_stack: this.recipe_result.result.id run data modify storage call_stack: this.autocrafter_data.recipes set from storage call_stack: this.cached_recipes
execute if data storage call_stack: {this:{empty_cache:true}} if data storage call_stack: this.recipe_result.result.id run data modify storage call_stack: call.arg0 set from storage call_stack: this.autocrafter_data
execute if data storage call_stack: {this:{empty_cache:true}} if data storage call_stack: this.recipe_result.result.id run function dt.autocraft:internal/blocks/autocrafter/db_data/save
#tellraw @p [{"text":"is empty: "},{"nbt":"this.empty_cache","storage":"call_stack:"}]

# Overwrite dropper items with the result
execute if data storage call_stack: this.recipe_result.result.id run data modify storage call_stack: call.arg0 set from storage call_stack: this.recipe_result.result
execute if data storage call_stack: this.recipe_result.result.id run function dt.crafting:internal/recipe/result_to_item
execute if data storage call_stack: this.recipe_result.result.id run data modify storage call_stack: this.items set value []
execute if data storage call_stack: this.recipe_result.result.id run data modify storage call_stack: this.items append from storage call_stack: call.result
execute if data storage call_stack: this.recipe_result.result.id run data modify block ~ ~ ~ Items set value []
# try looting to the hopper in case there are free spots or spots with the result already
execute if data storage call_stack: this.recipe_result.result.id run data modify storage call_stack: call.arg0 set from storage call_stack: this.items
execute if data storage call_stack: this.recipe_result.result.id run function dt.inventory:api/shulker/items/set
execute if data storage call_stack: this.recipe_result.result.id positioned ~ ~-1 ~ run function dt.inventory:api/shulker/loot/insert/block
execute if data storage call_stack: this.recipe_result.result.id run data modify storage call_stack: this.successful set from storage call_stack: call.result
execute if data storage call_stack: this.recipe_result.result.id if data storage call_stack: {this:{successful:false}} run data modify block ~ ~ ~ Items set from storage call_stack: this.items



function call_stack:pop