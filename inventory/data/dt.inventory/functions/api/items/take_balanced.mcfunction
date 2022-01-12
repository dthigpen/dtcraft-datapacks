#> dt.inventory:api/items/take_balanced
# @deprecated by dt.inventory:api/items/take
# @params
# @output
function call_stack:push
data modify storage call_stack: this.all_items set from storage call_stack: this.arg0
data modify storage call_stack: this.requested_item_id set from storage call_stack: this.arg1
data modify storage call_stack: this.slots set from storage call_stack: this.arg2
data modify storage call_stack: this.num_rounds set from storage call_stack: this.arg3

data modify storage call_stack: call.arg0 set from storage call_stack: this.all_items
data modify storage call_stack: call.arg1 set from storage call_stack: this.requested_item_id
data modify storage call_stack: call.arg2 set from storage call_stack: this.slots
function dt.inventory:api/items/split_by_id_and_slot
data modify storage call_stack: this.matching_items set from storage call_stack: call.return[0]
data modify storage call_stack: this.non_matching_items set from storage call_stack: call.return[1]

data modify storage call_stack: call.arg0 set from storage call_stack: this.matching_items
data modify storage call_stack: call.arg1 set from storage call_stack: this.num_rounds
function dt.inventory:api/items/decrement_count_balanced
execute if data storage call_stack: call.return run data modify storage call_stack: this.remaining_items set from storage call_stack: call.return.remaining_items
execute if data storage call_stack: call.return run data modify storage call_stack: this.removed_items set from storage call_stack: call.return.removed_items
execute if data storage call_stack: call.return run data modify storage call_stack: this.success set value true

execute if data storage call_stack: this.success run data modify storage call_stack: this.return.taken set from storage call_stack: this.removed_items 
execute if data storage call_stack: this.success run data modify storage call_stack: this.return.remaining set from storage call_stack: this.remaining_items
execute if data storage call_stack: this.success run data modify storage call_stack: this.return.remaining append from storage call_stack: this.non_matching_items[]

function call_stack:pop