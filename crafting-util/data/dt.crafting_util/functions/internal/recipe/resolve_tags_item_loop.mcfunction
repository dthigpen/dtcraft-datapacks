function call_stack:push
data modify storage call_stack: this.tags set from storage call_stack: this.arg0
data modify storage call_stack: this.item_counts set from storage call_stack: this.arg1

#tellraw @p [{"nbt":"this.tags[0].tag","storage":"call_stack:"}]
data modify storage call_stack: this.group_name set from storage call_stack: this.tags[0].tag
#tellraw @p [{"text":"group_name: "},{"nbt":"this.group_name","storage":"call_stack:"}]

# get the group
data modify storage call_stack: call.arg0 set from storage dt.crafting_util: groups
data modify storage call_stack: call.arg1 set value {group:""}
data modify storage call_stack: call.arg1.group set from storage call_stack: this.group_name
function dt.array_util:api/split_by_key
data modify storage call_stack: this.matching_groups set from storage call_stack: call.result[0]
data modify storage call_stack: this.group set from storage call_stack: this.matching_groups[0]

#tellraw @p [{"text":"matching_groups: "},{"nbt":"this.matching_groups","storage":"call_stack:"}]


data modify storage call_stack: call.arg0 set from storage call_stack: this.item_counts
data modify storage call_stack: call.arg1 set from storage call_stack: this.group.values
function dt.crafting_util:internal/group/filter_items_in_group
data modify storage call_stack: this.items_in_group set from storage call_stack: call.result

#tellraw @p [{"text":"items_in_group: "},{"nbt":"this.items_in_group","storage":"call_stack:"}]
#tellraw @p [{"text":"item_counts: "},{"nbt":"this.item_counts","storage":"call_stack:"}]
#tellraw @p [{"text":"tag before: "},{"nbt":"this.tags[0]","storage":"call_stack:"}]

execute if data storage call_stack: this.items_in_group[0] run data modify storage call_stack: call.arg0 set from storage call_stack: this.items_in_group
execute if data storage call_stack: this.items_in_group[0] run data modify storage call_stack: call.arg1 set from storage call_stack: this.tags[0]
execute if data storage call_stack: this.items_in_group[0] run function dt.crafting_util:internal/recipe/resolve_tags_group_loop
execute if data storage call_stack: this.items_in_group[0] run data modify storage call_stack: this.tags[0] set from storage call_stack: call.result.tag

#tellraw @p [{"text":"tag after: "},{"nbt":"this.tags[0]","storage":"call_stack:"}]

data modify storage call_stack: call.arg0 set from storage call_stack: this.item_counts
data modify storage call_stack: call.arg1 set from storage call_stack: this.items_in_group
function dt.array_util:api/difference
data modify storage call_stack: this.item_counts set from storage call_stack: call.result


data modify storage call_stack: this.result set value false
execute store result score int1 dt.tmp run data get storage call_stack: this.tags[0].count

#tellraw @p [{"text":"tag: "},{"nbt":"this.tags[0]","storage":"call_stack:"}]

data remove storage call_stack: this.tags[0]

#tellraw @p [{"text":"item_counts: "},{"nbt":"this.item_counts","storage":"call_stack:"}]
#tellraw @p [{"text":"matching_groups: "},{"nbt":"this.matching_groups","storage":"call_stack:"}]

execute unless data storage call_stack: this.item_counts[0] if score int1 dt.tmp matches 0 if data storage call_stack: this.matching_groups[0] unless data storage call_stack: this.tags[0] run data modify storage call_stack: this.result set value true
execute if data storage call_stack: this.item_counts[0] if data storage call_stack: this.matching_groups[0] if data storage call_stack: this.tags[0] if data storage call_stack: this.item_counts[0] run data modify storage call_stack: call.arg0 set from storage call_stack: this.tags
execute if data storage call_stack: this.item_counts[0] if data storage call_stack: this.matching_groups[0] if data storage call_stack: this.tags[0] if data storage call_stack: this.item_counts[0] run data modify storage call_stack: call.arg1 set from storage call_stack: this.item_counts
execute if data storage call_stack: this.item_counts[0] if data storage call_stack: this.matching_groups[0] if data storage call_stack: this.tags[0] if data storage call_stack: this.item_counts[0] run function dt.crafting_util:internal/recipe/resolve_tags_item_loop
execute if data storage call_stack: this.item_counts[0] if data storage call_stack: this.matching_groups[0] if data storage call_stack: this.tags[0] if data storage call_stack: this.item_counts[0] run data modify storage call_stack: this.result set from storage call_stack: call.result
function call_stack:pop