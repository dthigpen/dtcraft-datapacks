function call_stack:push

data modify storage call_stack: this.crafting_ingredients set from storage call_stack: this.arg0
data modify storage call_stack: this.recipe_ingredients set from storage call_stack: this.arg1
data modify storage call_stack: this.remaining set from storage call_stack: this.arg2
data modify storage call_stack: this.has_tags set from storage call_stack: this.arg3
data modify storage call_stack: this.check_slots set value true
data modify storage call_stack: this.check_slots set from storage call_stack: this.arg4

data modify storage call_stack: this.curr_crafting_ingredient set from storage call_stack: this.crafting_ingredients[0]

# take out slots so we can match the with the result of the recipe object
data modify storage call_stack: this.slots set from storage call_stack: this.curr_crafting_ingredient.slots
data remove storage call_stack: this.curr_crafting_ingredient.slots

# tellraw @p [{"text":"crafting_ingredients: "},{"nbt":"this.crafting_ingredients","storage":"call_stack:"}]
# tellraw @p [{"text":"ingredients: "},{"nbt":"this.recipe_ingredients","storage":"call_stack:"}]

# Get the ingredients that match by both id and count
data modify storage call_stack: call.arg0 set from storage call_stack: this.recipe_ingredients
data modify storage call_stack: call.arg1 set from storage call_stack: this.curr_crafting_ingredient
function dt.array:api/split_by_key
data modify storage call_stack: this.matching_recipe_ingredients set from storage call_stack: call.return[0]
data modify storage call_stack: this.non_matching_recipe_ingredients set from storage call_stack: call.return[1]

# Get the first match if and only if there is one match
# TODO can unless condition be removed
execute if data storage call_stack: this.matching_recipe_ingredients[0] unless data storage call_stack: this.matching_recipe_ingredients[1] run data modify storage call_stack: this.first_matching_recipe_ingredient set from storage call_stack: this.matching_recipe_ingredients[0]

#region check slots
# if slot checking is off, or ingredient has no slots pass automatically
execute if data storage call_stack: this.first_matching_recipe_ingredient if data storage call_stack: {this:{check_slots:false}} run data modify storage call_stack: this.no_slots_or_matching set value true
execute unless data storage call_stack: this.first_matching_recipe_ingredient.slots run data modify storage call_stack: this.no_slots_or_matching set value true
execute if data storage call_stack: this.first_matching_recipe_ingredient.slots run data modify storage call_stack: call.arg0 set from storage call_stack: this.first_matching_recipe_ingredient.slots
execute if data storage call_stack: this.first_matching_recipe_ingredient.slots run data modify storage call_stack: call.arg1 set from storage call_stack: this.slots
execute if data storage call_stack: this.first_matching_recipe_ingredient.slots run function dt.array:api/split_by_key
execute if data storage call_stack: this.first_matching_recipe_ingredient.slots if data storage call_stack: call.return[0] run data modify storage call_stack: this.no_slots_or_matching set value true
#endregion

# tellraw @p ["find_ingredient_loop.mcfunction: ",{"nbt":"this.matching_recipe_ingredients[0]","storage":"call_stack:"}]

#tellraw @p [{"text":" idcountmatch: "},{"nbt":"this.id_count_match","storage":"call_stack:"}]
#tellraw @p [{"text":" matching slots: "},{"nbt":"this.matching_slots","storage":"call_stack:"}]
#tellraw @p [{"text":" this.slots: "},{"nbt":"this.slots","storage":"call_stack:"}]

# TODO update  slot checking logic so that it can be toggled on or off

# If the crafting_ingredient did not match, add it to the remaining as it could be a tag
execute unless data storage call_stack: this.no_slots_or_matching run data modify storage call_stack: this.remaining append from storage call_stack: this.curr_crafting_ingredient

# remove processed ingredients
data remove storage call_stack: this.crafting_ingredients[0]
data modify storage call_stack: this.recipe_ingredients set from storage call_stack: this.non_matching_recipe_ingredients

execute if data storage call_stack: this.crafting_ingredients[0] run data modify storage call_stack: this.more_crafting_ingredients set value true
execute if data storage call_stack: this.recipe_ingredients[0] run data modify storage call_stack: this.more_recipe_ingredients set value true
#region fail early conditions
# recipe does not have tags but there were non-exact matches
# recipe does not have ingredients left but there are still crafting ingredients
execute if data storage call_stack: {this:{has_tags:false}} if data storage call_stack: this.remaining[0] run data modify storage call_stack: this.fail_early set value true
execute if data storage call_stack: {this:{has_tags:false}} unless data storage call_stack: this.more_recipe_ingredients if data storage call_stack: this.crafting_ingredients[0] run data modify storage call_stack: this.fail_early set value true
#endregion

#region return logic
data modify storage call_stack: this.return set value {is_match: false, remaining: []}
execute unless data storage call_stack: this.fail_early unless data storage call_stack: this.more_recipe_ingredients run data modify storage call_stack: this.return.is_match set value true
execute unless data storage call_stack: this.fail_early unless data storage call_stack: this.more_recipe_ingredients run data modify storage call_stack: this.return.remaining append from storage call_stack: this.remaining[]
execute unless data storage call_stack: this.fail_early unless data storage call_stack: this.more_recipe_ingredients run data modify storage call_stack: this.return.remaining append from storage call_stack: this.crafting_ingredients[]
#endregion

# tellraw @p ["find_ingredient_loop.mcfunction: ",{"nbt":"this.fail_early","storage":"call_stack:"}]
#tellraw @p [{"text":"crafting_ingredients: "},{"nbt":"this.crafting_ingredients","storage":"call_stack:"}]
#tellraw @p [{"text":"ingredients: "},{"nbt":"this.recipe_ingredients","storage":"call_stack:"}]
#tellraw @p [{"text":"remaining: "},{"nbt":"this.remaining","storage":"call_stack:"}]

#tellraw @p [{"text":"result: "},{"nbt":"this.return","storage":"call_stack:"}]

execute unless data storage call_stack: this.fail_early if data storage call_stack: this.more_crafting_ingredients if data storage call_stack: this.more_recipe_ingredients run data modify storage call_stack: call.arg0 set from storage call_stack: this.crafting_ingredients
execute unless data storage call_stack: this.fail_early if data storage call_stack: this.more_crafting_ingredients if data storage call_stack: this.more_recipe_ingredients run data modify storage call_stack: call.arg1 set from storage call_stack: this.recipe_ingredients
execute unless data storage call_stack: this.fail_early if data storage call_stack: this.more_crafting_ingredients if data storage call_stack: this.more_recipe_ingredients run data modify storage call_stack: call.arg2 set from storage call_stack: this.remaining
execute unless data storage call_stack: this.fail_early if data storage call_stack: this.more_crafting_ingredients if data storage call_stack: this.more_recipe_ingredients run data modify storage call_stack: call.arg3 set from storage call_stack: this.has_tags
execute unless data storage call_stack: this.fail_early if data storage call_stack: this.more_crafting_ingredients if data storage call_stack: this.more_recipe_ingredients run data modify storage call_stack: call.arg4 set from storage call_stack: this.check_slots
execute unless data storage call_stack: this.fail_early if data storage call_stack: this.more_crafting_ingredients if data storage call_stack: this.more_recipe_ingredients run function dt.crafting:internal/recipe/match_ingredients_loop
execute unless data storage call_stack: this.fail_early if data storage call_stack: this.more_crafting_ingredients if data storage call_stack: this.more_recipe_ingredients run data modify storage call_stack: this.return set from storage call_stack: call.return

function call_stack:pop