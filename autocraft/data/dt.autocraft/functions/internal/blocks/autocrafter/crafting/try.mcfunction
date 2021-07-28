function call_stack:push

data modify storage call_stack: this.recipe_result set value {}

# only craft if there are no stacks
function dt.autocraft:internal/util/get_items_from_block_or_entity
data modify storage call_stack: this.items set from storage call_stack: call.result

data modify storage call_stack: call.arg0 set from storage call_stack: this.items
function dt.autocraft:internal/blocks/autocrafter/crafting/can_craft
execute if data storage call_stack: {call:{result:true}} run data modify storage call_stack: this.can_craft set value true

execute if data storage call_stack: this.can_craft run function dt.autocraft:internal/blocks/autocrafter/db_data/fetch_or_init
execute if data storage call_stack: this.can_craft run data modify storage call_stack: this.autocrafter_data set from storage call_stack: call.result
execute if data storage call_stack: this.can_craft if data storage call_stack: {this:{autocrafter_data:{is_item_specific:true}}} run data modify storage call_stack: this.item_specific set value true

# case 1: If item specific, try the recipes list and only the recipes list (craft_from_specific_recipes)
# case 2: If not, try the bad items cache, then the successful recipe cache, then all items (craft_non_specific)
execute if data storage call_stack: this.can_craft if data storage call_stack: this.item_specific if data storage call_stack: this.autocrafter_data.cache.successful_recipes[0] run data modify storage call_stack: this.craft_from_specific_recipes set value true
execute if data storage call_stack: this.can_craft unless data storage call_stack: this.item_specific run data modify storage call_stack: this.craft_non_specific set value true

# case 1
execute if data storage call_stack: this.craft_from_specific_recipes run data modify storage call_stack: call.arg0 set from storage call_stack: this.items
execute if data storage call_stack: this.craft_from_specific_recipes run data modify storage call_stack: call.arg1 set from storage call_stack: this.autocrafter_data.cache.successful_recipes
execute if data storage call_stack: this.craft_from_specific_recipes run function dt.crafting:api/recipe/find_from_recipes
execute if data storage call_stack: this.craft_from_specific_recipes run data modify storage call_stack: this.recipe_result set from storage call_stack: call.result


# case 2
# Check that the current items are not in the bad_items cache
execute if data storage call_stack: this.craft_non_specific run data modify storage call_stack: call.arg0 set from storage call_stack: this.autocrafter_data.cache.bad_items
execute if data storage call_stack: this.craft_non_specific run data modify storage call_stack: call.arg1 set from storage call_stack: this.items
execute if data storage call_stack: this.craft_non_specific run function dt.autocraft:internal/blocks/autocrafter/crafting/is_in_bad_items_cache
execute if data storage call_stack: this.craft_non_specific if data storage call_stack: {call:{result:true}} run data modify storage call_stack: this.craft_non_specific set value false

# Try to craft from the successful recipe cache
# If it is found here, do nothing since its already in the successful recipes cache
execute if data storage call_stack: this.craft_non_specific run data modify storage call_stack: call.arg0 set from storage call_stack: this.items
execute if data storage call_stack: this.craft_non_specific run data modify storage call_stack: call.arg1 set from storage call_stack: this.autocrafter_data.cache.successful_recipes
execute if data storage call_stack: this.craft_non_specific run function dt.crafting:api/recipe/find_from_recipes
execute if data storage call_stack: this.craft_non_specific run data modify storage call_stack: this.recipe_result set from storage call_stack: call.result
execute if data storage call_stack: this.craft_non_specific if data storage call_stack: this.recipe_result.result.id run data modify storage call_stack: this.found_recipe set value true

# Try searching all recipes
## If it is found here, add to successful recipes cache
execute if data storage call_stack: this.craft_non_specific unless data storage call_stack: this.found_recipe run data modify storage call_stack: call.arg0 set from storage call_stack: this.items
execute if data storage call_stack: this.craft_non_specific unless data storage call_stack: this.found_recipe run function dt.crafting:api/recipe/find
execute if data storage call_stack: this.craft_non_specific unless data storage call_stack: this.found_recipe run data modify storage call_stack: this.recipe_result set from storage call_stack: call.result
## add to cache for future calls
## TODO use actual cache
execute if data storage call_stack: this.craft_non_specific unless data storage call_stack: this.found_recipe if data storage call_stack: this.recipe_result.result.id run data modify storage call_stack: this.autocrafter_data.cache.successful_recipes append from storage call_stack: this.recipe_result
execute if data storage call_stack: this.craft_non_specific unless data storage call_stack: this.found_recipe if data storage call_stack: this.recipe_result.result.id run data modify storage call_stack: call.arg0 set from storage call_stack: this.autocrafter_data
execute if data storage call_stack: this.craft_non_specific unless data storage call_stack: this.found_recipe if data storage call_stack: this.recipe_result.result.id run function dt.autocraft:internal/blocks/autocrafter/db_data/save

execute if data storage call_stack: this.craft_non_specific unless data storage call_stack: this.found_recipe run data modify storage call_stack: this.found_recipe set value true

## add items to bad items
execute if data storage call_stack: this.craft_non_specific unless data storage call_stack: this.found_recipe run data modify storage call_stack: call.arg0 set from storage call_stack: this.items
execute if data storage call_stack: this.craft_non_specific unless data storage call_stack: this.found_recipe run function dt.crafting:internal/ingredient/get_info_obj
execute if data storage call_stack: this.craft_non_specific unless data storage call_stack: this.found_recipe run data modify storage call_stack: this.info_obj set from storage call_stack: call.result
execute if data storage call_stack: this.craft_non_specific unless data storage call_stack: this.found_recipe run data modify storage call_stack: this.autocrafter_data.cache.bad_items append from storage call_stack: this.info_obj
execute if data storage call_stack: this.craft_non_specific unless data storage call_stack: this.found_recipe run data modify storage call_stack: call.arg0 set from storage call_stack: this.autocrafter_data
execute if data storage call_stack: this.craft_non_specific unless data storage call_stack: this.found_recipe run function dt.autocraft:internal/blocks/autocrafter/db_data/save

# Execute if recipe was found regardless of method
## Overwrite dropper items with the result
execute if data storage call_stack: this.found_recipe run data modify storage call_stack: call.arg0 set from storage call_stack: this.recipe_result.result
execute if data storage call_stack: this.found_recipe run function dt.crafting:internal/recipe/result_to_item
execute if data storage call_stack: this.found_recipe run data modify storage call_stack: this.items set value []
execute if data storage call_stack: this.found_recipe run data modify storage call_stack: this.items append from storage call_stack: call.result
execute if data storage call_stack: this.found_recipe run data modify block ~ ~ ~ Items set value []
## try looting to the hopper in case there are free spots or spots with the result already
execute if data storage call_stack: this.found_recipe run data modify storage call_stack: call.arg0 set from storage call_stack: this.items
execute if data storage call_stack: this.found_recipe run function dt.inventory:api/shulker/items/set
execute if data storage call_stack: this.found_recipe positioned ~ ~-1 ~ run function dt.inventory:api/shulker/loot/insert/block
execute if data storage call_stack: this.found_recipe run data modify storage call_stack: this.successful set from storage call_stack: call.result
execute if data storage call_stack: this.found_recipe if data storage call_stack: {this:{successful:false}} run data modify block ~ ~ ~ Items set from storage call_stack: this.items

# TODO fix support for hopper minecart

function call_stack:pop