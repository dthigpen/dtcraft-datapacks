# say crafter/get_free_slots
function call_stack:push
data modify storage call_stack: this.items set from storage call_stack: this.arg0

data modify storage call_stack: this.result set value []
execute unless data storage call_stack: this.items[{Slot:0b}] run data modify storage call_stack: this.result append value 0
execute unless data storage call_stack: this.items[{Slot:1b}] run data modify storage call_stack: this.result append value 1
execute unless data storage call_stack: this.items[{Slot:2b}] run data modify storage call_stack: this.result append value 2
execute unless data storage call_stack: this.items[{Slot:3b}] run data modify storage call_stack: this.result append value 3
execute unless data storage call_stack: this.items[{Slot:4b}] run data modify storage call_stack: this.result append value 4
execute unless data storage call_stack: this.items[{Slot:5b}] run data modify storage call_stack: this.result append value 5
execute unless data storage call_stack: this.items[{Slot:6b}] run data modify storage call_stack: this.result append value 6
execute unless data storage call_stack: this.items[{Slot:7b}] run data modify storage call_stack: this.result append value 7
execute unless data storage call_stack: this.items[{Slot:8b}] run data modify storage call_stack: this.result append value 8

function call_stack:pop