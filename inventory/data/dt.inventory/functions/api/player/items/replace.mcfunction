#> dt.inventory:api/player/items/replace
# Replace items in the player's inventory with the given items (each with Slot attributes)
# @params
#   storage call_stack: call.arg0
#       array of items
function call_stack:push
data modify storage call_stack: this.items set from storage call_stack: this.arg0
data modify storage call_stack: this.successful set value false
execute if data storage call_stack: this.items[0].Slot run data modify storage call_stack: call.arg0 set from storage call_stack: this.items[0]
execute if data storage call_stack: this.items[0].Slot run function dt.inventory:api/player/item/replace
execute if data storage call_stack: this.items[0].Slot run data modify storage call_stack: this.successful set from storage call_stack: call.return

# TODO wait till end and attempt to give to user if slot is not present or failed to replace
# execute if data storage call_stack: {this:{successful:false}} run data modify storage call_stack: call.arg0 set from storage call_stack: this.item
# execute if data storage call_stack: {this:{successful:false}} run function dt.inventory:api/shulker/items/set
# execute if data storage call_stack: {this:{successful:false}} run function dt.inventory:api/shulker/loot/give/player

data remove storage call_stack: this.items[0]

execute if data storage call_stack: this.items[0] run data modify storage call_stack: call.arg0 set from storage call_stack: this.items
execute if data storage call_stack: this.items[0] run function dt.inventory:api/player/items/replace

function call_stack:pop