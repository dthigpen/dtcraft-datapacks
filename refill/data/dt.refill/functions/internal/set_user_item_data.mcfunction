# say store selected
function call_stack:push

data modify storage call_stack: this.user set from storage call_stack: this.arg0

data remove storage call_stack: this.user.data
data modify storage call_stack: this.user.selected set from entity @s SelectedItem
data modify storage call_stack: this.user.selected.Slot set from entity @s SelectedItemSlot

data modify storage call_stack: this.user.inventory set from entity @s Inventory

# remove hotbar slots
data remove storage call_stack: this.user.inventory[{Slot:0b}]
data remove storage call_stack: this.user.inventory[{Slot:1b}]
data remove storage call_stack: this.user.inventory[{Slot:2b}]
data remove storage call_stack: this.user.inventory[{Slot:3b}]
data remove storage call_stack: this.user.inventory[{Slot:4b}]
data remove storage call_stack: this.user.inventory[{Slot:5b}]
data remove storage call_stack: this.user.inventory[{Slot:6b}]
data remove storage call_stack: this.user.inventory[{Slot:7b}]
data remove storage call_stack: this.user.inventory[{Slot:8b}]

data modify storage call_stack: this.return set from storage call_stack: this.user
function call_stack:pop