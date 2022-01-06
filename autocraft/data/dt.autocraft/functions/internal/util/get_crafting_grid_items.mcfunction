function call_stack:push
data modify storage call_stack: this.return set value []

#[[[cog
#   for slot in [1,2,3,10,11,12,19,20,21]:
#       cog.outl(f'execute if data block ~ ~ ~ Items[{{Slot:{slot}b}}] run data modify storage call_stack: this.return append from block ~ ~ ~ Items[{{Slot:{slot}b}}]')
#]]]
execute if data block ~ ~ ~ Items[{Slot:1b}] run data modify storage call_stack: this.return append from block ~ ~ ~ Items[{Slot:1b}]
execute if data block ~ ~ ~ Items[{Slot:2b}] run data modify storage call_stack: this.return append from block ~ ~ ~ Items[{Slot:2b}]
execute if data block ~ ~ ~ Items[{Slot:3b}] run data modify storage call_stack: this.return append from block ~ ~ ~ Items[{Slot:3b}]
execute if data block ~ ~ ~ Items[{Slot:10b}] run data modify storage call_stack: this.return append from block ~ ~ ~ Items[{Slot:10b}]
execute if data block ~ ~ ~ Items[{Slot:11b}] run data modify storage call_stack: this.return append from block ~ ~ ~ Items[{Slot:11b}]
execute if data block ~ ~ ~ Items[{Slot:12b}] run data modify storage call_stack: this.return append from block ~ ~ ~ Items[{Slot:12b}]
execute if data block ~ ~ ~ Items[{Slot:19b}] run data modify storage call_stack: this.return append from block ~ ~ ~ Items[{Slot:19b}]
execute if data block ~ ~ ~ Items[{Slot:20b}] run data modify storage call_stack: this.return append from block ~ ~ ~ Items[{Slot:20b}]
execute if data block ~ ~ ~ Items[{Slot:21b}] run data modify storage call_stack: this.return append from block ~ ~ ~ Items[{Slot:21b}]
#[[[end]]]

function call_stack:pop