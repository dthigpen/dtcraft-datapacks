#> dt.inventory:api/items/take
# Take the requested item id and count from the given set of all items
# @params
#   storage call_stack: call.arg0
#       array of all items such an inventory
#   storage call_stack: call.arg1
#       string requested item id
#   storage call_stack: call.arg2
#       int requested item count
#   storage call_stack: call.arg3
#       bool distribute the take across all stacks
#   storage call_stack: call.arg4
#       array of slots to be able to choose from
# @output
#   storage call_stack: this.return
#       object {success:bool, items:[], remaining_count: int}
function call_stack:push
data modify storage call_stack: this.all_items set from storage call_stack: this.arg0
data modify storage call_stack: this.requested_item_id set from storage call_stack: this.arg1
data modify storage call_stack: this.requested_item_count set from storage call_stack: this.arg2
data modify storage call_stack: this.distribute set value false
data modify storage call_stack: this.distribute set from storage call_stack: this.arg3
data modify storage call_stack: this.slots set from storage call_stack: this.arg4

#> algorithm
# if no slots do regular take
# if slots, take one from each slot
# adjust counts, then repeat if necessary


data modify storage call_stack: call.arg0 set from storage call_stack: this.all_items
data modify storage call_stack: call.arg1 set from storage call_stack: this.requested_item_id
data modify storage call_stack: call.arg2 set from storage call_stack: this.slots
function dt.inventory:api/items/split_by_id_and_slot
data modify storage call_stack: this.matching_items set from storage call_stack: call.return[0]
data modify storage call_stack: this.non_matching_items set from storage call_stack: call.return[1]

execute if data storage call_stack: this.matching_items[0] run function dt.inventory:internal/items/take/if_match

execute if data storage call_stack: {this:{distribute:false}} run data modify storage call_stack: this.cumulative_subtract set value true
execute if data storage call_stack: {this:{distribute:true}} run data modify storage call_stack: this.subtract_single set value true

# save off counts for modification
data modify storage call_stack: this.matching_counts set value []
data modify storage call_stack: this.matching_counts append from storage call_stack: this.matching_items[].Count

# returns adjusted_counts and requested_item_count
execute if data storage call_stack: this.cumulative_subtract run function dt.inventory:internal/items/take_cumulative_sub_unsafe
# returns adjusted_counts and requested_item_count and bad_count
execute if data storage call_stack: this.subtract_single run function dt.inventory:internal/items/take_subtract_single_unsafe

# Reform items
# convert int -> byte
data modify storage call_stack: call.arg0 set from storage call_stack: this.adjusted_counts
function dt.array:api/map/type/to_byte
data modify storage call_stack: this.adjusted_counts set from storage call_stack: call.return
# update Count keys
data modify storage call_stack: call.arg0 set from storage call_stack: this.matching_items
data modify storage call_stack: call.arg1 set from storage call_stack: this.adjusted_counts
function dt.inventory:internal/apply/count
data modify storage call_stack: this.updated_matching_items set from storage call_stack: call.return
data remove storage call_stack: this.updated_matching_items[{Count:0b}]

data modify storage call_stack: this.updated_all_items set value []
data modify storage call_stack: this.updated_all_items append from storage call_stack: this.updated_matching_items[]
data modify storage call_stack: this.updated_all_items append from storage call_stack: this.non_matching_items[]

scoreboard players reset $int1 dt.tmp
execute store result score $int1 dt.tmp run data get storage call_stack: this.requested_item_count
execute if score $int1 dt.tmp matches 1.. run data modify storage call_stack: this.has_remaining_count set value true

# set cumulative state
execute if data storage call_stack: this.cumulative_subtract if data storage call_stack: this.has_remaining_count run data modify storage call_stack: this.fail_cumulative set value true
execute if data storage call_stack: this.cumulative_subtract unless data storage call_stack: this.has_remaining_count run data modify storage call_stack: this.success_cumulative set value true
# set iterative state
# if 
execute if data storage call_stack: this.subtract_single if data storage call_stack: this.bad_count run data modify storage call_stack: this.fail_iterative set value true
execute if data storage call_stack: this.subtract_single unless data storage call_stack: this.bad_count run data modify storage call_stack: this.success_iterative set value true

# handle fail for cumulative case
execute if data storage call_stack: this.fail_cumulative run data modify storage call_stack: this.return set value {success:false, items:[],remaining_count:0}
execute if data storage call_stack: this.fail_cumulative run data modify storage call_stack: this.return.items set from storage call_stack: this.updated_all_items
execute if data storage call_stack: this.fail_cumulative run data modify storage call_stack: this.return.remaining_count set from storage call_stack: this.requested_item_count

# handle success for cumulative case
execute if data storage call_stack: this.success_cumulative run data modify storage call_stack: this.return set value {success:true, items:[],remaining_count:0}
execute if data storage call_stack: this.success_cumulative run data modify storage call_stack: this.return.items set from storage call_stack: this.updated_all_items

# handle success for iterative case
execute if data storage call_stack: this.success_iterative run data modify storage call_stack: this.return set value {success:true, items:[],remaining_count:0}
execute if data storage call_stack: this.success_iterative run data modify storage call_stack: this.return.items set from storage call_stack: this.updated_all_items


# handle fail for iterative case (count < 0 or not multiple of slots)
execute if data storage call_stack: this.fail_iterative run data modify storage call_stack: this.return set value {success: false, items:[], remaining_count:0}
execute if data storage call_stack: this.fail_iterative run data modify storage call_stack: this.return.items set from storage call_stack: this.all_items
execute if data storage call_stack: this.fail_iterative run say TODO set the remaining count for fail distribtue take

# sort the result
execute if data storage call_stack: this.return.items run data modify storage call_stack: this.slots set value []
execute if data storage call_stack: this.return.items run data modify storage call_stack: this.slots append from storage call_stack: this.return.items[].Slot
execute if data storage call_stack: this.return.items run data modify storage call_stack: call.arg0 set from storage call_stack: this.slots
execute if data storage call_stack: this.return.items run data modify storage call_stack: call.arg1 set from storage call_stack: this.return.items
execute if data storage call_stack: this.return.items run function dt.array:api/map/key_value/from_keys_and_values
# tellraw @p ["take.mcfunction: c",{"nbt":"call.return","storage":"call_stack:"}]
# tellraw @p ["take.mcfunction: r",{"nbt":"this.return.items","storage":"call_stack:"}]
data modify storage call_stack: call.arg0 set from storage call_stack: call.return
function dt.array:api/sort/merge_sort
execute if data storage call_stack: this.return.items run data modify storage call_stack: this.return.items set value []
execute if data storage call_stack: this.return.items run data modify storage call_stack: this.return.items append from storage call_stack: call.return[].value

# handle success for iterative case (loop)
execute if data storage call_stack: this.success_iterative unless data storage call_stack: {this:{requested_item_count:0}} run data modify storage call_stack: call.arg0 set from storage call_stack: this.updated_all_items
execute if data storage call_stack: this.success_iterative unless data storage call_stack: {this:{requested_item_count:0}} run data modify storage call_stack: call.arg1 set from storage call_stack: this.requested_item_id
execute if data storage call_stack: this.success_iterative unless data storage call_stack: {this:{requested_item_count:0}} run data modify storage call_stack: call.arg2 set from storage call_stack: this.requested_item_count
execute if data storage call_stack: this.success_iterative unless data storage call_stack: {this:{requested_item_count:0}} run data modify storage call_stack: call.arg3 set from storage call_stack: this.distribute
execute if data storage call_stack: this.success_iterative unless data storage call_stack: {this:{requested_item_count:0}} run function dt.inventory:api/items/take
execute if data storage call_stack: this.success_iterative unless data storage call_stack: {this:{requested_item_count:0}} run data modify storage call_stack: this.return set from storage call_stack: call.return

function call_stack:pop