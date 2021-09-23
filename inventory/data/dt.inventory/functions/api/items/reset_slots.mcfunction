#> dt.inventory:api/items/reset_slots
# reset the slots of the given items starting at Slot 0b
# @params
#   storage call_stack: call.arg0
#       list of items
# @output
#   storage call_stack: call.return
#       list of items
function call_stack:push

data modify storage call_stack: this.items set from storage call_stack: this.arg0

data modify storage call_stack: this.return set value []
execute if data storage call_stack: this.items[0] run data modify storage call_stack: call.arg0 set from storage call_stack: this.items
execute if data storage call_stack: this.items[0] run data modify storage call_stack: call.arg1 set value []
execute if data storage call_stack: this.items[0] run function dt.inventory:internal/reset_slots_loop
execute if data storage call_stack: this.items[0] run data modify storage call_stack: this.return set from storage call_stack: call.return
function call_stack:pop