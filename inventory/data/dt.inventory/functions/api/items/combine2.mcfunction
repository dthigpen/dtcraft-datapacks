#> dt.inventory:api/items/combine2
# Combine the given items array into as few stacks as possible.
# This works with any number of items and does not use shulker/looting mechanics
# @params
#   storage call_stack: call.arg0
#       array of items
# @output
#   storage call_stack: this.return
#       array of items
function call_stack:push
data modify storage call_stack: this.items set from storage call_stack: this.arg0

# Given an array of items
# group by merge without size
# for each group
# get stacksize
# condense counts and copy info
# rebuild group with new counts
# recombine groups

data modify storage call_stack: call.arg0 set from storage call_stack: this.items
data remove storage call_stack: call.arg0[].Count
data remove storage call_stack: call.arg0[].Slot
data modify storage call_stack: call.arg1 set from storage call_stack: this.items
function dt.array:api/map/key_value/from_keys_and_values
function call_stack:pipe
function dt.array:api/group_by
function call_stack:pipe
function dt.array:api/map/key_value/subarray/to_values
function call_stack:pipe
function dt.inventory:internal/items/combine_item_groups
data modify storage call_stack: call.arg0 set value []
data modify storage call_stack: call.arg0 append from storage call_stack: call.return[][]
function dt.inventory:api/items/reset_slots
data modify storage call_stack: this.return set from storage call_stack: call.return

function call_stack:pop