function call_stack:push
data modify storage call_stack: this.group_names set from storage call_stack: this.arg0
data modify storage call_stack: this.item_ids set from storage call_stack: this.arg1

# get the group
# TODO should this be moved up such that groups themselves are passed in
data modify storage call_stack: call.arg0 set from storage dt.crafting: groups
data modify storage call_stack: call.arg1 set value {group:""}
data modify storage call_stack: call.arg1.group set from storage call_stack: this.group_names[0]
function dt.array:api/split_by_key
data modify storage call_stack: this.group set from storage call_stack: call.result[0][0]
data modify storage call_stack: this.group_values set from storage call_stack: this.group.values

data modify storage call_stack: call.arg0 set from storage call_stack: this.item_ids
data modify storage call_stack: call.arg1 set from storage call_stack: this.group_values
function dt.array:api/difference
data modify storage call_stack: this.remaining_item_ids set from storage call_stack: call.result

data remove storage call_stack: this.group_names[0]
execute unless data storage call_stack: this.group_names[0] run data modify storage call_stack: this.result set from storage call_stack: this.remaining_item_ids
execute if data storage call_stack: this.group_names[0] run data modify storage call_stack: call.arg0 set from storage call_stack: this.group_names
execute if data storage call_stack: this.group_names[0] run data modify storage call_stack: call.arg1 set from storage call_stack: this.remaining_item_ids
execute if data storage call_stack: this.group_names[0] run function dt.crafting:internal/recipe/resolve_groups_loop
execute if data storage call_stack: this.group_names[0] run data modify storage call_stack: this.result set from storage call_stack: call.result

function call_stack:pop