# Built with mcpy (https://github.com/dthigpen/mcpy)

function call_stack:push
data modify storage call_stack: this.arg0.selected set from entity @s SelectedItem
data modify storage call_stack: this.arg0.selected.Slot set from entity @s SelectedItemSlot
data modify storage call_stack: this.arg0.inventory set from entity @s Inventory
data remove storage call_stack: this.arg0.inventory[{"Slot": 0b}]
data remove storage call_stack: this.arg0.inventory[{"Slot": 1b}]
data remove storage call_stack: this.arg0.inventory[{"Slot": 2b}]
data remove storage call_stack: this.arg0.inventory[{"Slot": 3b}]
data remove storage call_stack: this.arg0.inventory[{"Slot": 4b}]
data remove storage call_stack: this.arg0.inventory[{"Slot": 5b}]
data remove storage call_stack: this.arg0.inventory[{"Slot": 6b}]
data remove storage call_stack: this.arg0.inventory[{"Slot": 7b}]
data remove storage call_stack: this.arg0.inventory[{"Slot": 8b}]
data modify storage call_stack: this.return set from storage call_stack: this.arg0
function call_stack:pop
