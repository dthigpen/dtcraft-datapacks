function call_stack:push
data modify storage call_stack: this.items set from storage call_stack: this.arg0
execute if data block ~ ~ ~ Items if data storage call_stack: this.items[{Slot:0b}] run data remove block ~ ~ ~ Items[{Slot:0b}]
execute if data block ~ ~ ~ Items if data storage call_stack: this.items[{Slot:0b}] run data modify block ~ ~ ~ Items append from storage call_stack: this.items[{Slot:0b}]
execute if data block ~ ~ ~ Items if data storage call_stack: this.items[{Slot:1b}] run data remove block ~ ~ ~ Items[{Slot:1b}]
execute if data block ~ ~ ~ Items if data storage call_stack: this.items[{Slot:1b}] run data modify block ~ ~ ~ Items append from storage call_stack: this.items[{Slot:1b}]
execute if data block ~ ~ ~ Items if data storage call_stack: this.items[{Slot:2b}] run data remove block ~ ~ ~ Items[{Slot:2b}]
execute if data block ~ ~ ~ Items if data storage call_stack: this.items[{Slot:2b}] run data modify block ~ ~ ~ Items append from storage call_stack: this.items[{Slot:2b}]
execute if data block ~ ~ ~ Items if data storage call_stack: this.items[{Slot:3b}] run data remove block ~ ~ ~ Items[{Slot:3b}]
execute if data block ~ ~ ~ Items if data storage call_stack: this.items[{Slot:3b}] run data modify block ~ ~ ~ Items append from storage call_stack: this.items[{Slot:3b}]
execute if data block ~ ~ ~ Items if data storage call_stack: this.items[{Slot:4b}] run data remove block ~ ~ ~ Items[{Slot:4b}]
execute if data block ~ ~ ~ Items if data storage call_stack: this.items[{Slot:4b}] run data modify block ~ ~ ~ Items append from storage call_stack: this.items[{Slot:4b}]
execute unless data block ~ ~ ~ Items if data storage call_stack: this.items[{Slot:0b}] as @e[predicate=dt.autocraft:hopper_minecraft,sort=nearest,limit=1] run data remove entity @s Items[{Slot:0b}]
execute unless data block ~ ~ ~ Items if data storage call_stack: this.items[{Slot:0b}] as @e[predicate=dt.autocraft:hopper_minecraft,sort=nearest,limit=1] run data modify entity @s Items append from storage call_stack: this.items[{Slot:0b}]
execute unless data block ~ ~ ~ Items if data storage call_stack: this.items[{Slot:1b}] as @e[predicate=dt.autocraft:hopper_minecraft,sort=nearest,limit=1] run data remove entity @s Items[{Slot:1b}]
execute unless data block ~ ~ ~ Items if data storage call_stack: this.items[{Slot:1b}] as @e[predicate=dt.autocraft:hopper_minecraft,sort=nearest,limit=1] run data modify entity @s Items append from storage call_stack: this.items[{Slot:1b}]
execute unless data block ~ ~ ~ Items if data storage call_stack: this.items[{Slot:2b}] as @e[predicate=dt.autocraft:hopper_minecraft,sort=nearest,limit=1] run data remove entity @s Items[{Slot:2b}]
execute unless data block ~ ~ ~ Items if data storage call_stack: this.items[{Slot:2b}] as @e[predicate=dt.autocraft:hopper_minecraft,sort=nearest,limit=1] run data modify entity @s Items append from storage call_stack: this.items[{Slot:2b}]
execute unless data block ~ ~ ~ Items if data storage call_stack: this.items[{Slot:3b}] as @e[predicate=dt.autocraft:hopper_minecraft,sort=nearest,limit=1] run data remove entity @s Items[{Slot:3b}]
execute unless data block ~ ~ ~ Items if data storage call_stack: this.items[{Slot:3b}] as @e[predicate=dt.autocraft:hopper_minecraft,sort=nearest,limit=1] run data modify entity @s Items append from storage call_stack: this.items[{Slot:3b}]
execute unless data block ~ ~ ~ Items if data storage call_stack: this.items[{Slot:4b}] as @e[predicate=dt.autocraft:hopper_minecraft,sort=nearest,limit=1] run data remove entity @s Items[{Slot:4b}]
execute unless data block ~ ~ ~ Items if data storage call_stack: this.items[{Slot:4b}] as @e[predicate=dt.autocraft:hopper_minecraft,sort=nearest,limit=1] run data modify entity @s Items append from storage call_stack: this.items[{Slot:4b}]

function call_stack:pop