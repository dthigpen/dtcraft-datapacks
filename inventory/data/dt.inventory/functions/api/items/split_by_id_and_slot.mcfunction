#> dt.inventory:api/items/split_by_id_and_slot
# Split the given array of all items by whether or not they have the given id and slots
# @params
#   storage call_stack: call.arg0
#       array of all items
#   storage call_stack: call.arg1
#       string requested item id
#   storage call_stack: call.arg2
#       array of valid slots
# @output
#   storage call_stack: this.return
#       array of two arrays, [[matches],[non-matches]]
function call_stack:push
data modify storage call_stack: this.all_items set from storage call_stack: this.arg0
data modify storage call_stack: this.requested_item_id set from storage call_stack: this.arg1
data modify storage call_stack: this.slots set from storage call_stack: this.arg2

# split by inclusion in slot set
execute unless data storage call_stack: this.slots[0] run data modify storage call_stack: this.matching_items set from storage call_stack: this.all_items
execute unless data storage call_stack: this.slots[0] run data modify storage call_stack: this.non_matching_items set value []
execute if data storage call_stack: this.slots[0] run data modify storage call_stack: call.arg0 set from storage call_stack: this.all_items
execute if data storage call_stack: this.slots[0] run data modify storage call_stack: call.arg1 set value []
execute if data storage call_stack: this.slots[0] run data modify storage call_stack: call.arg1 append from storage call_stack: this.all_items[].Slot
execute if data storage call_stack: this.slots[0] run data modify storage call_stack: call.arg2 set from storage call_stack: this.slots
execute if data storage call_stack: this.slots[0] run function dt.array:api/split/in_set_unique
execute if data storage call_stack: this.slots[0] run data modify storage call_stack: this.matching_items set from storage call_stack: call.return[0]
execute if data storage call_stack: this.slots[0] run data modify storage call_stack: this.non_matching_items set from storage call_stack: call.return[1]

# Get all items that have the given id
# move non matches to the non_matching_items array
data modify storage call_stack: call.arg0 set from storage call_stack: this.matching_items
function dt.array:api/map/key_value/from_values
function call_stack:pipe
data modify storage call_stack: call.arg1 set value {}
data modify storage call_stack: call.arg1.id set from storage call_stack: this.requested_item_id
function dt.array:api/reduce/subarray/equal_to
function call_stack:pipe
function dt.array:api/map/key_value/subarray/to_values
data modify storage call_stack: this.matching_items set from storage call_stack: call.return[0]
data modify storage call_stack: this.non_matching_items append from storage call_stack: call.return[1][]

data modify storage call_stack: this.return set value [[],[]]
data modify storage call_stack: this.return[0] set from storage call_stack: this.matching_items
data modify storage call_stack: this.return[1] set from storage call_stack: this.non_matching_items
function call_stack:pop