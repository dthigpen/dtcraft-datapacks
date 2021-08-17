# say store selected
function call_stack:push

data modify storage call_stack: this.this_user set from storage call_stack: this.arg0

data remove storage call_stack: this.this_user.data
data modify storage call_stack: this.this_user.data.selected set from entity @s SelectedItem
data modify storage call_stack: this.this_user.data.selected.Slot set from entity @s SelectedItemSlot

data modify storage call_stack: this.this_user.data.inventory set from entity @s Inventory

# remove hotbar slots
data remove storage call_stack: this.this_user.data.inventory[{Slot:0b}]
data remove storage call_stack: this.this_user.data.inventory[{Slot:1b}]
data remove storage call_stack: this.this_user.data.inventory[{Slot:2b}]
data remove storage call_stack: this.this_user.data.inventory[{Slot:3b}]
data remove storage call_stack: this.this_user.data.inventory[{Slot:4b}]
data remove storage call_stack: this.this_user.data.inventory[{Slot:5b}]
data remove storage call_stack: this.this_user.data.inventory[{Slot:6b}]
data remove storage call_stack: this.this_user.data.inventory[{Slot:7b}]
data remove storage call_stack: this.this_user.data.inventory[{Slot:8b}]

data modify storage call_stack: this.result set from storage call_stack: this.this_user
function call_stack:pop