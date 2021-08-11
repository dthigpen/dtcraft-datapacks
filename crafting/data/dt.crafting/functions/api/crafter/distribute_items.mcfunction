#> dt.crafting:api/crafter/distribute_items
# distribute items with counts greater than one into free slots with 9 total slots
# @params
#   storage call_stack: call.arg0
#       array of items
# @output
#   storage call_stack: call.result
#       array of items
function call_stack:push


data modify storage call_stack: this.temp_items set from storage call_stack: this.arg0

data modify storage call_stack: call.arg0 set from storage call_stack: this.temp_items
function dt.crafting:internal/crafter/get_free_slots
data modify storage call_stack: this.free_slots set from storage call_stack: call.result

data modify storage call_stack: this.result set from storage call_stack: this.temp_items
execute if data storage call_stack: this.temp_items[0] run data modify storage call_stack: call.arg0 set from storage call_stack: this.temp_items
execute if data storage call_stack: this.temp_items[0] run data modify storage call_stack: call.arg1 set value []
execute if data storage call_stack: this.temp_items[0] run data modify storage call_stack: call.arg2 set from storage call_stack: this.free_slots
execute if data storage call_stack: this.temp_items[0] run function dt.crafting:internal/crafter/distribute_slots
execute if data storage call_stack: this.temp_items[0] run data modify storage call_stack: this.result set from storage call_stack: call.result

function call_stack:pop