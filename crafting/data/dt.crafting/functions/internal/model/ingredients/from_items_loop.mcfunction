function call_stack:push
data modify storage call_stack: this.items set from storage call_stack: this.arg0
data modify storage call_stack: this.counts set from storage call_stack: this.arg1

data modify storage call_stack: this.item_info set value {id:""}
data modify storage call_stack: this.item_info.id set from storage call_stack: this.items[0].id

# get the items that match the id
data modify storage call_stack: call.arg0 set from storage call_stack: this.items
data modify storage call_stack: call.arg1 set from storage call_stack: this.item_info
function dt.array:api/split_by_key
data modify storage call_stack: this.matching set from storage call_stack: call.return[0]
data modify storage call_stack: this.not_matching set from storage call_stack: call.return[1]

data modify storage call_stack: call.arg0 set value []
data modify storage call_stack: call.arg0 append from storage call_stack: this.matching[].Count
function dt.array:api/math/sum
data modify storage call_stack: this.item_info.count set from storage call_stack: call.return

# get array of slots as ints
data modify storage call_stack: call.arg0 set value []
data modify storage call_stack: call.arg0 append from storage call_stack: this.matching[].Slot
function dt.array:api/convert/to_ints
data modify storage call_stack: this.item_info.slots set from storage call_stack: call.return

data modify storage call_stack: this.counts append from storage call_stack: this.item_info
data modify storage call_stack: this.items set from storage call_stack: this.not_matching
# data remove storage call_stack: this.items[0]
execute unless data storage call_stack: this.items[0] run data modify storage call_stack: this.return set value {items:[]}
execute unless data storage call_stack: this.items[0] run data modify storage call_stack: this.return.items set from storage call_stack: this.counts
execute if data storage call_stack: this.items[0] run data modify storage call_stack: call.arg0 set from storage call_stack: this.items
execute if data storage call_stack: this.items[0] run data modify storage call_stack: call.arg1 set from storage call_stack: this.counts
execute if data storage call_stack: this.items[0] run function dt.crafting:internal/model/ingredients/from_items_loop
execute if data storage call_stack: this.items[0] run data modify storage call_stack: this.return set from storage call_stack: call.return

function call_stack:pop