#> dt.inventory:api/player/item/take
# Take N items of a given id from a player's inventory and reduce the stacks accordingly.
# The taken items, and remaining count is returned.
# @params
#   storage call_stack: call.arg0
#       string item id such as "minecraft:feather"
#   storage call_stack: call.arg1
#       int item count
# @output
#   storage call_stack: call.result
#       NBT object {values:[...], remainder:0} where values represents the items successfully taken from the player and remainder represents the remaining count if the taken items are not enough.
function call_stack:push
data modify storage call_stack: this.item_id set from storage call_stack: this.arg0
data modify storage call_stack: this.count set value 1
data modify storage call_stack: this.count set from storage call_stack: this.arg1


# Get all items from player inventory
function dt.inventory:api/player/items/get
data modify storage call_stack: this.player_items set from storage call_stack: call.result

# Get all items that have the given id
data modify storage call_stack: call.arg0 set from storage call_stack: this.player_items
data modify storage call_stack: call.arg1 set value {}
data modify storage call_stack: call.arg1.id set from storage call_stack: this.item_id
function dt.array:api/split_by_key
data modify storage call_stack: this.matching_items set from storage call_stack: call.result[0]

# subtract the counts
data modify storage call_stack: this.matching_counts set value []
data modify storage call_stack: this.matching_counts append from storage call_stack: this.matching_items[].Count
data modify storage call_stack: call.arg0 set from storage call_stack: this.matching_counts
data modify storage call_stack: call.arg1 set from storage call_stack: this.count
function dt.array:api/math/cumulative_subtract_min_0
data modify storage call_stack: this.adjusted_counts set from storage call_stack: call.result.values
data modify storage call_stack: this.remaining_count set from storage call_stack: call.result.remainder


# convert int -> byte
data modify storage call_stack: call.arg0 set from storage call_stack: this.adjusted_counts
function dt.array:api/convert/to_bytes
data modify storage call_stack: this.adjusted_counts set from storage call_stack: call.result
# update Count keys
data modify storage call_stack: call.arg0 set from storage call_stack: this.matching_items
data modify storage call_stack: call.arg1 set from storage call_stack: this.adjusted_counts
function dt.inventory:internal/apply/count
data modify storage call_stack: this.matching_items set from storage call_stack: call.result

# replace changed items
data modify storage call_stack: call.arg0 set from storage call_stack: this.matching_items
function dt.inventory:api/player/items/replace

# return the remaining count
data modify storage call_stack: this.result set from storage call_stack: this.remaining_count

function call_stack:pop