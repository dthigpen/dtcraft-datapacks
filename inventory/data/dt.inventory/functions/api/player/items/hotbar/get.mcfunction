#> dt.inventory:api/player/items/hotbar/get
# get the current player's true hotbar items (Slots 0-8)
# @output
#   storage call_stack: call.return
#       List of items
function call_stack:push

data modify storage call_stack: this.return set value []
data modify storage call_stack: this.return append from entity @s Inventory[{Slot:0b}]
data modify storage call_stack: this.return append from entity @s Inventory[{Slot:1b}]
data modify storage call_stack: this.return append from entity @s Inventory[{Slot:2b}]
data modify storage call_stack: this.return append from entity @s Inventory[{Slot:3b}]
data modify storage call_stack: this.return append from entity @s Inventory[{Slot:4b}]
data modify storage call_stack: this.return append from entity @s Inventory[{Slot:5b}]
data modify storage call_stack: this.return append from entity @s Inventory[{Slot:6b}]
data modify storage call_stack: this.return append from entity @s Inventory[{Slot:7b}]
data modify storage call_stack: this.return append from entity @s Inventory[{Slot:8b}]

function call_stack:pop