#> dt.crafting:api/crafter/balance_items
# balance item counts across other stacks of the same item in the list
# @input
#   storage call_stack: call.arg0
#       array of items
# @output
#   storage call_stack: call.return
#       array of items
function call_stack:push

data modify storage call_stack: this.temp_items set from storage call_stack: this.arg0

data modify storage call_stack: this.return set from storage call_stack: this.temp_items
execute if data storage call_stack: this.temp_items[0] run data modify storage call_stack: call.arg0 set from storage call_stack: this.temp_items
execute if data storage call_stack: this.temp_items[0] run data modify storage call_stack: call.arg1 set value []
execute if data storage call_stack: this.temp_items[0] run function dt.crafting:internal/crafter/balance_items_loop
execute if data storage call_stack: this.temp_items[0] run data modify storage call_stack: this.return set from storage call_stack: call.return

function call_stack:pop