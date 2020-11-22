function call_stack:push
data modify storage call_stack: this.items set from storage call_stack: this.arg0
data modify storage call_stack: this.cached_recipes set from storage call_stack: this.arg1

#tellraw @p [{"text":"CACHE: "},{"nbt":"this.cached_recipes","storage":"call_stack:"}]
data modify storage call_stack: this.recipe_result set value {}
data modify storage call_stack: call.arg0 set from storage call_stack: this.items
execute if data storage call_stack: this.cached_recipes[0] run data modify storage call_stack: call.arg1 set from storage call_stack: this.cached_recipes
execute if data storage call_stack: this.cached_recipes[0] run function dt.crafting_util:api/recipe/find_from_recipes
execute unless data storage call_stack: this.cached_recipes[0] run function dt.crafting_util:api/recipe/find
execute run data modify storage call_stack: this.recipe_result set from storage call_stack: call.result
#data modify storage call_stack: this.in_cache set value false
#execute if data storage call_stack: this.recipe_result.result.id run data modify storage call_stack: this.in_cache set value true

# If the search was from the cache and the resulting recipe is {} then try an exhaustive search
#execute if data storage call_stack: {this:{in_cache:false}} run data modify storage call_stack: call.arg0 set from storage call_stack: this.items
#execute if data storage call_stack: {this:{in_cache:false}} run function dt.crafting_util:api/recipe/find
#execute if data storage call_stack: {this:{in_cache:false}} run data modify storage call_stack: this.recipe_result set from storage call_stack: call.result

data modify storage call_stack: this.empty_cache set value true
execute if data storage call_stack: this.cached_recipes[0] run data modify storage call_stack: this.empty_cache set value false
tellraw @p [{"text":"is empty: "},{"nbt":"this.empty_cache","storage":"call_stack:"}]
# if it was not in the cache but was found exhaustively, prepend it to the cache and save it
execute if data storage call_stack: {this:{empty_cache:true}} if data storage call_stack: this.recipe_result.result.id run data modify storage call_stack: this.cached_recipes prepend from storage call_stack: this.recipe_result 
execute if data storage call_stack: {this:{empty_cache:true}} if data storage call_stack: this.recipe_result.result.id run data modify storage call_stack: call.arg0 set from storage call_stack: this.cached_recipes
execute if data storage call_stack: {this:{empty_cache:true}} if data storage call_stack: this.recipe_result.result.id run function autocraft:internal/blocks/autocrafter/sava_data

tellraw @p [{"text":"CACHE: "},{"nbt":"this.cached_recipes","storage":"call_stack:"}]
#tellraw @p [{"text":"in_cache: "},{"nbt":"this.in_cache","storage":"call_stack:"}]
#tellraw @p [{"text":"result: "},{"nbt":"this.recipe_result.result.id","storage":"call_stack:"}]
# Overwrite dropper items with the result
execute if data storage call_stack: this.recipe_result.result.id run data modify storage call_stack: call.arg0 set from storage call_stack: this.recipe_result.result
execute if data storage call_stack: this.recipe_result.result.id run function dt.crafting_util:internal/recipe/result_to_item
execute if data storage call_stack: this.recipe_result.result.id run data modify storage call_stack: this.items set value []
execute if data storage call_stack: this.recipe_result.result.id run data modify storage call_stack: this.items append from storage call_stack: call.result
execute if data storage call_stack: this.recipe_result.result.id run data modify storage call_stack: this.items[0].Slot set value 0b
execute if data storage call_stack: this.recipe_result.result.id run data modify block ~ ~ ~ Items set from storage call_stack: this.items

function call_stack:pop