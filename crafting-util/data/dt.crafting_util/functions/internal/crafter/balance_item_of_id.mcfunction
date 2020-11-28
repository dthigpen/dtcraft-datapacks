function call_stack:push

data modify storage call_stack: this.temp_items set from storage call_stack: this.arg0
data modify storage call_stack: this.item_id set from storage call_stack: this.arg1

data modify storage call_stack: call.arg0 set from storage call_stack: this.temp_items
data modify storage call_stack: call.arg1 set value {id:""}
data modify storage call_stack: call.arg1.id set from storage call_stack: this.item_id
function dt.array_util:api/split_by_key
data modify storage call_stack: this.items_of_id set from storage call_stack: call.result[0]


data modify storage call_stack: call.arg0 set from storage call_stack: this.temp_items
function dt.crafting_util:internal/crafter/get_free_slots
data modify storage call_stack: this.free_slots set from storage call_stack: call.result
execute store result score #num_free dt.tmp run data get storage call_stack: this.free_slots




function call_stack:pop