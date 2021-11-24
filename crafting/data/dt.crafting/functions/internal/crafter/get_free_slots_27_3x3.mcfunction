# say crafter/get_free_slots
function call_stack:push
data modify storage call_stack: this.items set from storage call_stack: this.arg0

data modify storage call_stack: this.return set value []
#[[[cog
#   from datapack_utils import *
#   for slot in [1,2,3,10,11,12,19,20,21]:
#       cog.outl(f'execute unless data storage call_stack: this.items[{{Slot:{slot}b}}] run data modify storage call_stack: this.return append value {slot}')
#]]]
execute unless data storage call_stack: this.items[{Slot:1b}] run data modify storage call_stack: this.return append value 1
execute unless data storage call_stack: this.items[{Slot:2b}] run data modify storage call_stack: this.return append value 2
execute unless data storage call_stack: this.items[{Slot:3b}] run data modify storage call_stack: this.return append value 3
execute unless data storage call_stack: this.items[{Slot:10b}] run data modify storage call_stack: this.return append value 10
execute unless data storage call_stack: this.items[{Slot:11b}] run data modify storage call_stack: this.return append value 11
execute unless data storage call_stack: this.items[{Slot:12b}] run data modify storage call_stack: this.return append value 12
execute unless data storage call_stack: this.items[{Slot:19b}] run data modify storage call_stack: this.return append value 19
execute unless data storage call_stack: this.items[{Slot:20b}] run data modify storage call_stack: this.return append value 20
execute unless data storage call_stack: this.items[{Slot:21b}] run data modify storage call_stack: this.return append value 21
#[[[end]]]
# execute unless data storage call_stack: this.items[{Slot:0b}] run data modify storage call_stack: this.return append value 0
# execute unless data storage call_stack: this.items[{Slot:1b}] run data modify storage call_stack: this.return append value 1
# execute unless data storage call_stack: this.items[{Slot:2b}] run data modify storage call_stack: this.return append value 2
# execute unless data storage call_stack: this.items[{Slot:3b}] run data modify storage call_stack: this.return append value 3
# execute unless data storage call_stack: this.items[{Slot:4b}] run data modify storage call_stack: this.return append value 4
# execute unless data storage call_stack: this.items[{Slot:5b}] run data modify storage call_stack: this.return append value 5
# execute unless data storage call_stack: this.items[{Slot:6b}] run data modify storage call_stack: this.return append value 6
# execute unless data storage call_stack: this.items[{Slot:7b}] run data modify storage call_stack: this.return append value 7
# execute unless data storage call_stack: this.items[{Slot:8b}] run data modify storage call_stack: this.return append value 8

function call_stack:pop