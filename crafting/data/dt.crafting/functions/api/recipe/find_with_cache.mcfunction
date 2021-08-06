# say recipe/find
function call_stack:push
data modify storage call_stack: this.actual_items set from storage call_stack: this.arg0

data modify storage call_stack: call.arg0 set from storage call_stack: this.actual_items
function dt.crafting:api/recipe/is_eligible
execute if data storage call_stack: {call:{result:true}} run data modify storage call_stack: this.is_eligible set value true

execute if data storage call_stack: this.is_eligible run function dt.crafting:internal/database/fetch_or_init
execute if data storage call_stack: this.is_eligible run data modify storage call_stack: this.entity_crafting_data set from storage call_stack: call.result

# If same as last then set result to that
scoreboard players reset $result dt.tmp
# execute if data storage call_stack: this.is_eligible run tellraw @p ["find_with_cache.mcfunction: checking last items",{"nbt":"this.entity_crafting_data.cache.last_items_to_result","storage":"call_stack:"}]
execute if data storage call_stack: this.is_eligible run data modify storage call_stack: this.temp_items set from storage call_stack: this.actual_items
execute if data storage call_stack: this.is_eligible store success score $result dt.tmp run data modify storage call_stack: this.temp_items set from storage call_stack: this.entity_crafting_data.cache.last_items_to_result.items
execute if data storage call_stack: this.is_eligible if score $result dt.tmp = #equal dt.enum run data modify storage call_stack: this.is_same_as_last set value true
#execute if data storage call_stack: this.is_same_as_last run tellraw @p ["find_with_cache.mcfunction: same as last result",{"nbt":"this.variable","storage":"call_stack:"}]
execute if data storage call_stack: this.is_same_as_last run data modify storage call_stack: this.recipe_result set from storage call_stack: this.entity_crafting_data.cache.last_items_to_result.result

execute store result score $size1 dt.tmp run data get storage call_stack: this.entity_crafting_data.cache.bad_items
execute store result score $size2 dt.tmp run data get storage call_stack: this.entity_crafting_data.cache.good_recipes
#tellraw @p ["find_with_cache.mcfunction: ",{"score":{"name":"$size1","objective":"dt.tmp"}}]
#tellraw @p ["find_with_cache.mcfunction: ",{"score":{"name":"$size2","objective":"dt.tmp"}}]

# uncomment below for debugging
# data remove storage call_stack: this.is_same_as_last

# try good recipes
execute unless data storage call_stack: this.is_same_as_last run data modify storage call_stack: this.not_in_good_recipes set value true
#execute unless data storage call_stack: this.is_same_as_last if data storage call_stack: this.entity_crafting_data.cache.good_recipes[0] run tellraw @p ["find_with_cache.mcfunction: checking good recipes cache",{"nbt":"this.variable","storage":"call_stack:"}]
execute unless data storage call_stack: this.is_same_as_last if data storage call_stack: this.entity_crafting_data.cache.good_recipes[0] run data modify storage call_stack: call.arg0 set from storage call_stack: this.actual_items
execute unless data storage call_stack: this.is_same_as_last if data storage call_stack: this.entity_crafting_data.cache.good_recipes[0] run data modify storage call_stack: call.arg1 set from storage call_stack: this.entity_crafting_data.cache.good_recipes
execute unless data storage call_stack: this.is_same_as_last if data storage call_stack: this.entity_crafting_data.cache.good_recipes[0] run function dt.crafting:api/recipe/find_from_recipes
execute unless data storage call_stack: this.is_same_as_last if data storage call_stack: this.entity_crafting_data.cache.good_recipes[0] run data modify storage call_stack: this.recipe_result set from storage call_stack: call.result
execute unless data storage call_stack: this.is_same_as_last if data storage call_stack: this.entity_crafting_data.cache.good_recipes[0] if data storage call_stack: this.recipe_result.result.id run data remove storage call_stack: this.not_in_good_recipes

# Check bad items
execute if data storage call_stack: this.not_in_good_recipes run data modify storage call_stack: call.arg0 set from storage call_stack: this.actual_items
execute if data storage call_stack: this.not_in_good_recipes run function dt.crafting:internal/ingredient/get_info_obj
execute if data storage call_stack: this.not_in_good_recipes run data modify storage call_stack: this.info_obj set from storage call_stack: call.result
execute if data storage call_stack: this.not_in_good_recipes run data modify storage call_stack: this.info_obj_items set from storage call_stack: this.info_obj.items
#execute if data storage call_stack: this.not_in_good_recipes run tellraw @p ["find_with_cache.mcfunction: checking bad items cache",{"nbt":"this.variable","storage":"call_stack:"}]
execute if data storage call_stack: this.not_in_good_recipes run data modify storage call_stack: call.arg0 set from storage call_stack: this.entity_crafting_data.cache.bad_items
execute if data storage call_stack: this.not_in_good_recipes run data modify storage call_stack: call.arg1 set from storage call_stack: this.info_obj_items
execute if data storage call_stack: this.not_in_good_recipes run data modify storage call_stack: call.arg2 set value 1
execute if data storage call_stack: this.not_in_good_recipes run function dt.array:api/split_by_key_limit_n
execute if data storage call_stack: this.not_in_good_recipes if data storage call_stack: call.result[0][0] run data modify storage call_stack: this.in_bad_items set value true
#execute if data storage call_stack: this.in_bad_items run tellraw @p ["find_with_cache.mcfunction: found in bad items!",{"nbt":"this.variable","storage":"call_stack:"}]
# if not in good recipes and not in bad items do search of all items
execute store result score $size dt.tmp run data get storage call_stack: this.actual_items

#execute if data storage call_stack: this.not_in_good_recipes unless data storage call_stack: this.in_bad_items run tellraw @p ["find_with_cache.mcfunction: checking ALL items",{"nbt":"this.variable","storage":"call_stack:"}]
# data modify storage call_stack: this.in_bad_items set value true

execute if data storage call_stack: this.not_in_good_recipes unless data storage call_stack: this.in_bad_items run data modify storage call_stack: call.arg0 set from storage call_stack: this.info_obj
execute if data storage call_stack: this.not_in_good_recipes unless data storage call_stack: this.in_bad_items run function dt.crafting:internal/recipe/find_from_info_obj
execute if data storage call_stack: this.not_in_good_recipes unless data storage call_stack: this.in_bad_items run data modify storage call_stack: this.recipe_result set from storage call_stack: call.result
execute if data storage call_stack: this.not_in_good_recipes unless data storage call_stack: this.in_bad_items if data storage call_stack: this.recipe_result.result.id run data modify storage call_stack: this.in_all_recipes set value true
execute if data storage call_stack: this.not_in_good_recipes unless data storage call_stack: this.in_bad_items unless data storage call_stack: this.recipe_result.result.id run data modify storage call_stack: this.not_in_all_recipes set value true
#execute if data storage call_stack: this.not_in_good_recipes unless data storage call_stack: this.in_bad_items unless data storage call_stack: this.recipe_result.result.id run tellraw @p ["find_with_cache.mcfunction: NOT IN ALL ITEMS ",{"nbt":"this.variable","storage":"call_stack:"}]
# tellraw @p ["find_with_cache.mcfunction: a ",{"nbt":"this.in_bad_items","storage":"call_stack:"}]
# tellraw @p ["find_with_cache.mcfunction: b ",{"nbt":"this.not_in_good_recipes","storage":"call_stack:"}]
# tellraw @p ["find_with_cache.mcfunction: c ",{"nbt":"this.not_in_all_recipes","storage":"call_stack:"}]


# add to good recipes cache
#execute if data storage call_stack: this.in_all_recipes run tellraw @p ["find_with_cache.mcfunction: add to good recipe cache ",{"nbt":"this.variable","storage":"call_stack:"}]
execute if data storage call_stack: this.in_all_recipes run data modify storage call_stack: this.cache set from storage call_stack: this.entity_crafting_data.cache.good_recipes
execute if data storage call_stack: this.in_all_recipes run data modify storage call_stack: this.cache prepend from storage call_stack: this.recipe_result
execute if data storage call_stack: this.in_all_recipes run data modify storage call_stack: call.arg0 set from storage call_stack: this.cache
execute if data storage call_stack: this.in_all_recipes run data modify storage call_stack: call.arg1 set from storage dt.crafting: global.settings.caching.good_recipes_size
execute if data storage call_stack: this.in_all_recipes run function dt.array:api/trim_to_size
execute if data storage call_stack: this.in_all_recipes run data modify storage call_stack: this.entity_crafting_data.cache.good_recipes set from storage call_stack: call.result
execute if data storage call_stack: this.in_all_recipes run data modify storage call_stack: call.arg0 set from storage call_stack: this.entity_crafting_data
execute if data storage call_stack: this.in_all_recipes run function dt.crafting:internal/database/save


# add to bad items cache
#execute if data storage call_stack: this.not_in_all_recipes run tellraw @p ["find_with_cache.mcfunction: add to bad item cache ",{"nbt":"this.variable","storage":"call_stack:"}]
execute if data storage call_stack: this.not_in_all_recipes run data modify storage call_stack: this.cache set from storage call_stack: this.entity_crafting_data.cache.bad_items
execute if data storage call_stack: this.not_in_all_recipes run data modify storage call_stack: this.cache prepend from storage call_stack: this.info_obj_items
execute if data storage call_stack: this.not_in_all_recipes run data modify storage call_stack: call.arg0 set from storage call_stack: this.cache
execute if data storage call_stack: this.not_in_all_recipes run data modify storage call_stack: call.arg1 set from storage dt.crafting: global.settings.caching.bad_items_size
execute if data storage call_stack: this.not_in_all_recipes run function dt.array:api/trim_to_size
execute if data storage call_stack: this.not_in_all_recipes run data modify storage call_stack: this.entity_crafting_data.cache.bad_items set from storage call_stack: call.result
execute if data storage call_stack: this.not_in_all_recipes run data modify storage call_stack: call.arg0 set from storage call_stack: this.entity_crafting_data
execute if data storage call_stack: this.not_in_all_recipes run function dt.crafting:internal/database/save

data modify storage call_stack: this.result set value {}
data modify storage call_stack: this.result set from storage call_stack: this.recipe_result

execute unless data storage call_stack: this.is_same_as_last run data modify storage call_stack: this.entity_crafting_data.cache.last_items_to_result.items set from storage call_stack: this.actual_items
execute unless data storage call_stack: this.is_same_as_last run data modify storage call_stack: this.entity_crafting_data.cache.last_items_to_result.result set from storage call_stack: this.recipe_result
execute unless data storage call_stack: this.is_same_as_last run data modify storage call_stack: call.arg0 set from storage call_stack: this.entity_crafting_data
execute unless data storage call_stack: this.is_same_as_last run function dt.crafting:internal/database/save

# tellraw @p ["find_with_cache.mcfunction: RESULT: ",{"nbt":"this.result.result.id","storage":"call_stack:"}]

function call_stack:pop