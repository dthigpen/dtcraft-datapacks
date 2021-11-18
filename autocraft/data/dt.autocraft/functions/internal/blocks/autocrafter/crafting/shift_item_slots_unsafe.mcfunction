
#[[[cog
#   for i in range(8,-1, -1):
#       slot = i
#       if 0 <= i <= 2:
#           slot += 1
#       elif 3 <= i <= 5:
#           slot += 7
#       elif 6 <= i <= 8:
#           slot += 13
#       cog.outl(f'execute if data storage call_stack: this.items[{{Slot:{i}b}}] run data modify storage call_stack: this.items[{{Slot:{i}b}}].Slot set value {slot}b')
#]]]
execute if data storage call_stack: this.items[{Slot:8b}] run data modify storage call_stack: this.items[{Slot:8b}].Slot set value 21b
execute if data storage call_stack: this.items[{Slot:7b}] run data modify storage call_stack: this.items[{Slot:7b}].Slot set value 20b
execute if data storage call_stack: this.items[{Slot:6b}] run data modify storage call_stack: this.items[{Slot:6b}].Slot set value 19b
execute if data storage call_stack: this.items[{Slot:5b}] run data modify storage call_stack: this.items[{Slot:5b}].Slot set value 12b
execute if data storage call_stack: this.items[{Slot:4b}] run data modify storage call_stack: this.items[{Slot:4b}].Slot set value 11b
execute if data storage call_stack: this.items[{Slot:3b}] run data modify storage call_stack: this.items[{Slot:3b}].Slot set value 10b
execute if data storage call_stack: this.items[{Slot:2b}] run data modify storage call_stack: this.items[{Slot:2b}].Slot set value 3b
execute if data storage call_stack: this.items[{Slot:1b}] run data modify storage call_stack: this.items[{Slot:1b}].Slot set value 2b
execute if data storage call_stack: this.items[{Slot:0b}] run data modify storage call_stack: this.items[{Slot:0b}].Slot set value 1b
#[[[end]]]
