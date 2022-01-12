#> dt.inventory:api/player/items/get
# Get all items from the player, both inventory and hotbar
# @output
#   storage call_stack: this.return
#       array of items
function call_stack:push
data modify storage call_stack: this.return set from entity @s Inventory
function call_stack:pop