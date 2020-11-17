function call_stack:push
data modify storage call_stack: this.items set from storage call_stack: this.arg0
data modify storage call_stack: this.slots set from storage call_stack: this.arg1

execute if data storage call_stack: this.items[0].Slot store result storage call_stack: this.slot int 1 run data get storage call_stack: this.items[0].Slot
execute if data storage call_stack: this.items[0].Slot run data modify storage call_stack: this.slots append from storage call_stack: this.slot

data remove storage call_stack: this.items[0]

execute unless data storage call_stack: this.items[0] run data modify storage call_stack: this.result set from storage call_stack: this.slots
execute if data storage call_stack: this.items[0] run data modify storage call_stack: call.arg0 set from storage call_stack: this.items
execute if data storage call_stack: this.items[0] run data modify storage call_stack: call.arg1 set from storage call_stack: this.slots
execute if data storage call_stack: this.items[0] run function dt.crafting_util:internal/ingredient/items_to_slots_loop
execute if data storage call_stack: this.items[0] run data modify storage call_stack: this.result set from storage call_stack: call.result

function call_stack:pop