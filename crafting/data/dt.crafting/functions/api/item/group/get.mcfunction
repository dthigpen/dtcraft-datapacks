function call_stack:push
data modify storage call_stack: this.group_name set from storage call_stack: this.arg0

data modify storage call_stack: call.arg0 set from storage dt.crafting: groups
data modify storage call_stack: call.arg1 set value {group:""}
data modify storage call_stack: call.arg1.group set from storage call_stack: this.group_names[0]
function dt.array:api/split_by_key
data modify storage call_stack: this.result set from storage call_stack: call.result[0][0]

function call_stack:pop