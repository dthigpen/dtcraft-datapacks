function call_stack:push
data modify storage call_stack: this.group_name set from storage call_stack: this.arg0
data modify storage call_stack: this.item_id set from storage call_stack: this.arg1

data modify storage call_stack: call.arg0 set from storage dt.crafting: groups
data modify storage call_stack: call.arg1 set value {group:""}
data modify storage call_stack: call.arg1.group set from storage call_stack: this.group_names[0]
function dt.array:api/split_by_key
data modify storage call_stack: this.group set from storage call_stack: call.return[0][0]
data modify storage call_stack: this.group_values set from storage call_stack: this.group.values

data modify storage call_stack: call.arg0 set from storage call_stack: this.group_values
data modify storage call_stack: call.arg1 set from storage call_stack: this.item_id
function dt.array:api/index_of
data modify storage call_stack: this.index set from storage call_stack: call.return

data modify storage call_stack: this.return set value true
execute if data storage call_stack: {this:{index:-1}} run data modify storage call_stack: this.return set value false
function call_stack:pop