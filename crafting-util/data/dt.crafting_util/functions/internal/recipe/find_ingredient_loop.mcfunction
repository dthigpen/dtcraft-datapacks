function call_stack:push

data modify storage call_stack: this.item_counts set from storage call_stack: this.arg0
data modify storage call_stack: this.ingredients set from storage call_stack: this.arg1
data modify storage call_stack: this.remaining set from storage call_stack: this.arg2
data modify storage call_stack: this.has_tags set from storage call_stack: this.arg3

# take out slots so we can match the with the result of the recipe object
data modify storage call_stack: this.slots set from storage call_stack: this.item_counts[0].slots
data remove storage call_stack: this.item_counts[0].slots

#tellraw @p [{"text":"item_counts: "},{"nbt":"this.item_counts","storage":"call_stack:"}]
#tellraw @p [{"text":"ingredients: "},{"nbt":"this.ingredients","storage":"call_stack:"}]

# Get the ingredients that match by both id and count
data modify storage call_stack: call.arg0 set from storage call_stack: this.ingredients
data modify storage call_stack: call.arg1 set from storage call_stack: this.item_counts[0]
function dt.crafting_util:internal/array/split_by_key
data modify storage call_stack: this.matches set from storage call_stack: call.result[0]
data modify storage call_stack: this.non_matches set from storage call_stack: call.result[1]
data modify storage call_stack: this.item_counts[0].slots set from storage call_stack: this.slots
execute store result storage call_stack: this.id_count_match int 1 run data get storage call_stack: this.matches

# TODO handle cases where this is not true
# if there was a match (and only one match), check the slots
data modify storage call_stack: this.matching_slots set value []
execute if data storage call_stack: {this:{id_count_match:1}} unless data storage call_stack: this.matches[0].slots run data modify storage call_stack: this.matching_slots append value -1
execute if data storage call_stack: {this:{id_count_match:1}} if data storage call_stack: this.matches[0].slots run data modify storage call_stack: call.arg0 set from storage call_stack: this.matches[0].slots
execute if data storage call_stack: {this:{id_count_match:1}} if data storage call_stack: this.matches[0].slots run data modify storage call_stack: call.arg1 set from storage call_stack: this.slots
execute if data storage call_stack: {this:{id_count_match:1}} if data storage call_stack: this.matches[0].slots run function dt.crafting_util:internal/array/split_by_key
execute if data storage call_stack: {this:{id_count_match:1}} if data storage call_stack: this.matches[0].slots run data modify storage call_stack: this.matching_slots set from storage call_stack: call.result[0]


#tellraw @p [{"text":" idcountmatch: "},{"nbt":"this.id_count_match","storage":"call_stack:"}]
#tellraw @p [{"text":" matching slots: "},{"nbt":"this.matching_slots","storage":"call_stack:"}]
#tellraw @p [{"text":" this.slots: "},{"nbt":"this.slots","storage":"call_stack:"}]

# If the item_count did not match, add it to the remaining as it could be a tag
execute unless data storage call_stack: {this:{id_count_match:1}} run data modify storage call_stack: this.remaining append from storage call_stack: this.item_counts[0]
execute if data storage call_stack: {this:{id_count_match:1}} unless data storage call_stack: this.matching_slots[0] run data modify storage call_stack: this.remaining append from storage call_stack: this.item_counts[0]
data remove storage call_stack: this.item_counts[0]
data modify storage call_stack: this.ingredients set from storage call_stack: this.non_matches
data modify storage call_stack: this.fail_early set value false
execute if data storage call_stack: {this:{has_tags:false}} if data storage call_stack: this.remaining[0] run data modify storage call_stack: this.fail_early set value true
execute if data storage call_stack: {this:{has_tags:false}} unless data storage call_stack: this.ingredients[0] if data storage call_stack: this.item_counts[0] run data modify storage call_stack: this.fail_early set value true

# if there are no more ingredients then set the result

data modify storage call_stack: this.result set value {is_match: false, remaining: []}

#tellraw @p [{"text":"result: "},{"nbt":"this.result","storage":"call_stack:"}]

execute if data storage call_stack: {this:{fail_early:false}} unless data storage call_stack: this.ingredients[0] run data modify storage call_stack: this.result.is_match set value true
execute if data storage call_stack: {this:{fail_early:false}} unless data storage call_stack: this.ingredients[0] run data modify storage call_stack: call.arg0 set from storage call_stack: this.remaining
execute if data storage call_stack: {this:{fail_early:false}} unless data storage call_stack: this.ingredients[0] run data modify storage call_stack: call.arg1 set from storage call_stack: this.item_counts
execute if data storage call_stack: {this:{fail_early:false}} unless data storage call_stack: this.ingredients[0] run function dt.crafting_util:internal/array/concat
execute if data storage call_stack: {this:{fail_early:false}} unless data storage call_stack: this.ingredients[0] run data modify storage call_stack: this.remaining set from storage call_stack: call.result
execute if data storage call_stack: {this:{fail_early:false}} unless data storage call_stack: this.ingredients[0] run data modify storage call_stack: this.result.remaining set from storage call_stack: this.remaining

#tellraw @p [{"text":"item_counts: "},{"nbt":"this.item_counts","storage":"call_stack:"}]
#tellraw @p [{"text":"ingredients: "},{"nbt":"this.ingredients","storage":"call_stack:"}]
#tellraw @p [{"text":"remaining: "},{"nbt":"this.remaining","storage":"call_stack:"}]

#tellraw @p [{"text":"result: "},{"nbt":"this.result","storage":"call_stack:"}]
# otherwise, loop
# if the slots match, then the rest of the recipe matches, so only check the slots

execute if data storage call_stack: {this:{fail_early:false}} if data storage call_stack: this.item_counts[0] if data storage call_stack: this.ingredients[0] run data modify storage call_stack: call.arg0 set from storage call_stack: this.item_counts
execute if data storage call_stack: {this:{fail_early:false}} if data storage call_stack: this.item_counts[0] if data storage call_stack: this.ingredients[0] run data modify storage call_stack: call.arg1 set from storage call_stack: this.ingredients
execute if data storage call_stack: {this:{fail_early:false}} if data storage call_stack: this.item_counts[0] if data storage call_stack: this.ingredients[0] run data modify storage call_stack: call.arg2 set from storage call_stack: this.remaining
execute if data storage call_stack: {this:{fail_early:false}} if data storage call_stack: this.item_counts[0] if data storage call_stack: this.ingredients[0] run data modify storage call_stack: call.arg3 set from storage call_stack: this.has_tags
execute if data storage call_stack: {this:{fail_early:false}} if data storage call_stack: this.item_counts[0] if data storage call_stack: this.ingredients[0] run function dt.crafting_util:internal/recipe/find_ingredient_loop
execute if data storage call_stack: {this:{fail_early:false}} if data storage call_stack: this.item_counts[0] if data storage call_stack: this.ingredients[0] run data modify storage call_stack: this.result set from storage call_stack: call.result

function call_stack:pop