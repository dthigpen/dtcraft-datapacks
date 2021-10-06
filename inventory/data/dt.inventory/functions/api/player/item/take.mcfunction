#> dt.inventory:api/player/item/take
# Take N items of a given id from a player's inventory and reduce the stacks accordingly.
# The taken items, and remaining count is returned.
# @params
#   storage call_stack: call.arg0
#       string item id such as "minecraft:feather"
#   storage call_stack: call.arg1
#       int item count
# @output
#   storage call_stack: call.return
#       NBT object {values:[...], remainder:0} where values represents the items successfully taken from the player and remainder represents the remaining count if the taken items are not enough.
function call_stack:push
data modify storage call_stack: this.item_id set from storage call_stack: this.arg0
data modify storage call_stack: this.count set value 1
data modify storage call_stack: this.count set from storage call_stack: this.arg1


# Get all items from player inventory
function dt.inventory:api/player/items/get
data modify storage call_stack: this.player_items set from storage call_stack: call.return

data modify storage call_stack: call.arg0 set from storage call_stack: this.player_items
data modify storage call_stack: call.arg1 set from storage call_stack: this.item_id
data modify storage call_stack: call.arg2 set from storage call_stack: this.count
function dt.inventory:api/items/take
data modify storage call_stack: this.success set from storage call_stack: call.return.success
execute if data storage call_stack: {this:{success:true}} run data modify storage call_stack: this.updated_items set from storage call_stack: call.return.items

# replace changed items
execute if data storage call_stack: {this:{success:true}} run data modify storage call_stack: call.arg0 set from storage call_stack: this.updated_items
execute if data storage call_stack: {this:{success:true}} run function dt.inventory:api/player/items/replace

# return the remaining count
execute if data storage call_stack: {this:{success:true}} run data modify storage call_stack: this.return set from storage call_stack: this.remaining_count

function call_stack:pop