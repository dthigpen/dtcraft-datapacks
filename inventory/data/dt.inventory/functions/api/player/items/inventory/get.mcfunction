#> dt.inventory:api/player/items/inventory/get
# get the current player's true inventory items (Slots 9-35)
# @output
#   storage call_stack: call.return
#       List of items
function call_stack:push

data modify storage call_stack: this.return set value []
data modify storage call_stack: this.return append from entity @s Inventory[{Slot:9b}]
data modify storage call_stack: this.return append from entity @s Inventory[{Slot:10b}]
data modify storage call_stack: this.return append from entity @s Inventory[{Slot:11b}]
data modify storage call_stack: this.return append from entity @s Inventory[{Slot:12b}]
data modify storage call_stack: this.return append from entity @s Inventory[{Slot:13b}]
data modify storage call_stack: this.return append from entity @s Inventory[{Slot:14b}]
data modify storage call_stack: this.return append from entity @s Inventory[{Slot:15b}]
data modify storage call_stack: this.return append from entity @s Inventory[{Slot:16b}]
data modify storage call_stack: this.return append from entity @s Inventory[{Slot:17b}]
data modify storage call_stack: this.return append from entity @s Inventory[{Slot:18b}]
data modify storage call_stack: this.return append from entity @s Inventory[{Slot:19b}]
data modify storage call_stack: this.return append from entity @s Inventory[{Slot:20b}]
data modify storage call_stack: this.return append from entity @s Inventory[{Slot:21b}]
data modify storage call_stack: this.return append from entity @s Inventory[{Slot:22b}]
data modify storage call_stack: this.return append from entity @s Inventory[{Slot:23b}]
data modify storage call_stack: this.return append from entity @s Inventory[{Slot:24b}]
data modify storage call_stack: this.return append from entity @s Inventory[{Slot:25b}]
data modify storage call_stack: this.return append from entity @s Inventory[{Slot:26b}]
data modify storage call_stack: this.return append from entity @s Inventory[{Slot:27b}]
data modify storage call_stack: this.return append from entity @s Inventory[{Slot:28b}]
data modify storage call_stack: this.return append from entity @s Inventory[{Slot:29b}]
data modify storage call_stack: this.return append from entity @s Inventory[{Slot:30b}]
data modify storage call_stack: this.return append from entity @s Inventory[{Slot:31b}]
data modify storage call_stack: this.return append from entity @s Inventory[{Slot:32b}]
data modify storage call_stack: this.return append from entity @s Inventory[{Slot:33b}]
data modify storage call_stack: this.return append from entity @s Inventory[{Slot:34b}]
data modify storage call_stack: this.return append from entity @s Inventory[{Slot:35b}]

function call_stack:pop