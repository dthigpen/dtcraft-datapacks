#> dt.inventory:api/items/decrement_count_balanced
# Remove the given amount from the given items Count fields 
# @params
#   storage call_stack: call.arg0
#       array of items
#   storage call_stack: call.arg1
#       int count to decrement each item by
# @output
#   storage call_stack: this.return
#       array [[removed-items], [remaining-items]]
function call_stack:push
data modify storage call_stack: this.items set from storage call_stack: this.arg0
data modify storage call_stack: this.num_rounds set from storage call_stack: this.arg1

# save off counts for modification
data modify storage call_stack: this.counts set value []
data modify storage call_stack: this.counts append from storage call_stack: this.items[].Count


data modify storage call_stack: call.arg0 set from storage call_stack: this.counts
data modify storage call_stack: call.arg1 set from storage call_stack: this.num_rounds
function dt.array:api/map/math/subtract
data modify storage call_stack: this.adjusted_counts set from storage call_stack: call.return

# make sure all counts are 0 or greater
data modify storage call_stack: call.arg0 set from storage call_stack: this.adjusted_counts
data modify storage call_stack: call.arg1 set value -1
function dt.array:api/reduce/math/are_all_greater_than
execute if data storage call_stack: call.return run data modify storage call_stack: this.ok_counts set value true

# Reform items
# convert int -> byte
execute if data storage call_stack: this.ok_counts run data modify storage call_stack: call.arg0 set from storage call_stack: this.adjusted_counts
execute if data storage call_stack: this.ok_counts run function dt.array:api/map/type/to_byte
execute if data storage call_stack: this.ok_counts run data modify storage call_stack: this.adjusted_counts set from storage call_stack: call.return
# update Count keys
execute if data storage call_stack: this.ok_counts run data modify storage call_stack: call.arg0 set from storage call_stack: this.items
execute if data storage call_stack: this.ok_counts run data modify storage call_stack: call.arg1 set from storage call_stack: this.adjusted_counts
execute if data storage call_stack: this.ok_counts run function dt.inventory:internal/apply/count
execute if data storage call_stack: this.ok_counts run data modify storage call_stack: this.updated_items set from storage call_stack: call.return
execute if data storage call_stack: this.ok_counts run data remove storage call_stack: this.updated_items[{Count:0b}]

# create "removed" items, if it was successful
# fabricate counts for num_rounds
execute if data storage call_stack: this.ok_counts run data modify storage call_stack: call.arg0 set value 0
execute if data storage call_stack: this.ok_counts run execute store result storage call_stack: call.arg0 int 1 run data get storage call_stack: this.items
execute if data storage call_stack: this.ok_counts run data modify storage call_stack: call.arg1 set from storage call_stack: this.num_rounds
execute if data storage call_stack: this.ok_counts run function dt.array:api/n_array_of
execute if data storage call_stack: this.ok_counts run data modify storage call_stack: this.num_removed_array set from storage call_stack: call.return
execute if data storage call_stack: this.ok_counts run data modify storage call_stack: call.arg0 set from storage call_stack: this.num_removed_array
execute if data storage call_stack: this.ok_counts run function dt.array:api/map/type/to_byte
execute if data storage call_stack: this.ok_counts run data modify storage call_stack: this.removed_counts set from storage call_stack: call.return
execute if data storage call_stack: this.ok_counts run data modify storage call_stack: call.arg0 set from storage call_stack: this.items
execute if data storage call_stack: this.ok_counts run data modify storage call_stack: call.arg1 set from storage call_stack: this.removed_counts
execute if data storage call_stack: this.ok_counts run function dt.inventory:internal/apply/count
execute if data storage call_stack: this.ok_counts run data modify storage call_stack: this.removed_items set from storage call_stack: call.return
execute if data storage call_stack: this.ok_counts run data modify storage call_stack: this.return.removed_items set from storage call_stack: this.removed_items
execute if data storage call_stack: this.ok_counts run data modify storage call_stack: this.return.remaining_items set from storage call_stack: this.updated_items
function call_stack:pop