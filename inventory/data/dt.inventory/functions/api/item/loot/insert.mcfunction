function call_stack:push
data modify storage call_stack: this.source_item set from storage call_stack: this.arg0
data modify storage call_stack: this.dest_items set from storage call_stack: this.arg1
data modify storage call_stack: this.max_slots set from storage call_stack: this.arg2

# turn dest items to key value pairs
# get items that are equal to it in the dest_items
# cumulative add the counts

data modify storage call_stack: call.arg0 set from storage call_stack: this.dest_items
function dt.array:api/map/key_value/from_values
function call_stack:pipe
data remove storage call_stack: call.arg0[].key.Slot
data remove storage call_stack: call.arg0[].key.Count
data modify storage call_stack: call.arg1 set from storage call_stack: this.source_item
data remove storage call_stack: call.arg1.Slot
data remove storage call_stack: call.arg1.Count
function dt.array:api/reduce/subarray/equal_to
data modify storage call_stack: this.dest_items_of_same set value []
data modify storage call_stack: this.dest_items_of_same append from storage call_stack: call.return[0][].value
data modify storage call_stack: this.dest_items_of_diff set value []
data modify storage call_stack: this.dest_items_of_diff append from storage call_stack: call.return[1][].value


data modify storage call_stack: call.arg0 set value []
data modify storage call_stack: call.arg0 append from storage call_stack: this.dest_items_of_same[].Count
data modify storage call_stack: call.arg1 set from storage call_stack: this.source_item.Count
data modify storage call_stack: call.arg2 set value 64
# TODO: properly get the stackSize
function dt.array:api/reduce/math/cumulative_add
data modify storage call_stack: this.new_counts set from storage call_stack: call.return

execute store result storage call_stack: call.arg0 int 1 run data get storage call_stack: this.new_counts
function dt.array:api/n_array_of

function call_stack:pop