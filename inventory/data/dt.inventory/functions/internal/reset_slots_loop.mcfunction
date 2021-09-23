function call_stack:push

data modify storage call_stack: this.items set from storage call_stack: this.arg0
data modify storage call_stack: this.new_items set from storage call_stack: this.arg1

execute store result storage call_stack: this.items[0].Slot byte 1 run data get storage call_stack: this.new_items
data modify storage call_stack: this.new_items append from storage call_stack: this.items[0]

data remove storage call_stack: this.items[0]
execute unless data storage call_stack: this.items[0] run data modify storage call_stack: this.return set from storage call_stack: this.new_items
execute if data storage call_stack: this.items[0] run data modify storage call_stack: call.arg0 set from storage call_stack: this.items
execute if data storage call_stack: this.items[0] run data modify storage call_stack: call.arg1 set from storage call_stack: this.new_items
execute if data storage call_stack: this.items[0] run function dt.inventory:internal/reset_slots_loop
data modify storage call_stack: this.return set from storage call_stack: call.return
function call_stack:pop