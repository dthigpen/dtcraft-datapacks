#say find_recipe_loop
function call_stack:push
data modify storage call_stack: this.temp_recipes set from storage call_stack: this.arg0
data modify storage call_stack: this.item_counts set from storage call_stack: this.arg1
data modify storage call_stack: this.check_slots set value true
data modify storage call_stack: this.check_slots set from storage call_stack: this.arg2
data modify storage call_stack: this.partial_matches set value false
data modify storage call_stack: this.partial_matches set from storage call_stack: this.arg3

#> algorithm
# for each recipe in temp_recipes
#   split recipe ingredients into tags and regular_ingredients
#   result = find_ingredient(item_counts, regular_ingredients, [], has_tags_bool)
#   is_match = result.is_match
#   remaining = result.remaining
#   if is_match and not has_tags and no_remaining:
#       found_recipe = true
#   if is_match and has_tags and no_remaining:
#       is_match = false
#   if is_match and has_tags and remaining:
#       found_recipe = resolve_tags(tags, remaining)
#   if found_recipe:
#       result = recipe
#       break
#   if not found_recipe:
#       loop


# tellraw @p [{"text":"recipe: "}, {"nbt":"this.temp_recipes[0].ingredients","storage":"call_stack:"}]
#tellraw @p [{"text":"counts: "}, {"nbt":"this.item_counts","storage":"call_stack:"}]
data modify storage call_stack: this.all_ingredients set from storage call_stack: this.temp_recipes[0].ingredients

# split out the ingredients into id and tag ingredients
data modify storage call_stack: this.id_ingredients set value []
data modify storage call_stack: this.tag_ingredients set value []
data modify storage call_stack: this.id_ingredients append from storage call_stack: this.all_ingredients[{type:"id"}]
data modify storage call_stack: this.tag_ingredients append from storage call_stack: this.all_ingredients[{type:"tag"}]
execute store success storage call_stack: this.has_tags byte 1 run data get storage call_stack: this.tag_ingredients[0]

data modify storage call_stack: call.arg0 set from storage call_stack: this.item_counts
data modify storage call_stack: call.arg1 set from storage call_stack: this.id_ingredients
data modify storage call_stack: call.arg2 set value []
data modify storage call_stack: call.arg3 set from storage call_stack: this.has_tags
function dt.crafting:internal/recipe/match_ingredients_loop
data modify storage call_stack: this.is_match set from storage call_stack: call.result.is_match
data modify storage call_stack: this.remaining_item_counts set from storage call_stack: call.result.remaining

data modify storage call_stack: this.found_recipe set value false
execute if data storage call_stack: {this:{is_match:true}} if data storage call_stack: {this:{has_tags:false}} unless data storage call_stack: this.remaining_item_counts[0] run data modify storage call_stack: this.found_recipe set value true
# If it has tags, check those and set the result to found_recipe
execute if data storage call_stack: {this:{is_match:true}} if data storage call_stack: {this:{has_tags:true}} unless data storage call_stack: this.remaining_item_counts[0] run data modify storage call_stack: this.is_match set value false
execute if data storage call_stack: {this:{is_match:true}} if data storage call_stack: {this:{has_tags:true}} if data storage call_stack: this.remaining_item_counts[0] run data modify storage call_stack: call.arg0 set from storage call_stack: this.tag_ingredients
execute if data storage call_stack: {this:{is_match:true}} if data storage call_stack: {this:{has_tags:true}} if data storage call_stack: this.remaining_item_counts[0] run data modify storage call_stack: call.arg1 set from storage call_stack: this.remaining_item_counts
execute if data storage call_stack: {this:{is_match:true}} if data storage call_stack: {this:{has_tags:true}} if data storage call_stack: this.remaining_item_counts[0] run function dt.crafting:internal/recipe/resolve_tags
execute if data storage call_stack: {this:{is_match:true}} if data storage call_stack: {this:{has_tags:true}} if data storage call_stack: this.remaining_item_counts[0] run data modify storage call_stack: this.found_recipe set from storage call_stack: call.result

data modify storage call_stack: this.result set value {}
execute if data storage call_stack: {this:{found_recipe:true}} run data modify storage call_stack: this.result set from storage call_stack: this.temp_recipes[0]

data remove storage call_stack: this.temp_recipes[0]
execute if data storage call_stack: this.temp_recipes[0] if data storage call_stack: {this:{found_recipe:false}} run data modify storage call_stack: call.arg0 set from storage call_stack: this.temp_recipes
execute if data storage call_stack: this.temp_recipes[0] if data storage call_stack: {this:{found_recipe:false}} run data modify storage call_stack: call.arg1 set from storage call_stack: this.item_counts
execute if data storage call_stack: this.temp_recipes[0] if data storage call_stack: {this:{found_recipe:false}} run data modify storage call_stack: call.arg2 set from storage call_stack: this.check_slots
execute if data storage call_stack: this.temp_recipes[0] if data storage call_stack: {this:{found_recipe:false}} run data modify storage call_stack: call.arg3 set from storage call_stack: this.partial_matches
execute if data storage call_stack: this.temp_recipes[0] if data storage call_stack: {this:{found_recipe:false}} run function dt.crafting:internal/recipe/find_recipe_loop
execute if data storage call_stack: this.temp_recipes[0] if data storage call_stack: {this:{found_recipe:false}} run data modify storage call_stack: this.result set from storage call_stack: call.result

function call_stack:pop