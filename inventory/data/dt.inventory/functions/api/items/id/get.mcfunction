#> dt.inventory:api/items/id/get
# Get numeric ids for the given array of items
# @params
#   storage call_stack: call.arg0
#       array of items
# @output
#   storage call_stack: this.return
#       array of numeric ids
function call_stack:push
data modify storage call_stack: this.items set from storage call_stack: this.arg0
execute unless data storage call_stack: this.temp_return run data modify storage call_stack: this.temp_return set value []
execute if data storage call_stack: this.items[0] run data modify storage call_stack: this.continue set value true
execute unless data storage call_stack: this.continue run data modify storage call_stack: this.return set from storage call_stack: this.temp_return

execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg0 set from storage call_stack: this.items[0]
execute if data storage call_stack: this.continue run function dt.inventory:api/item/id/get
execute if data storage call_stack: this.continue run data modify storage call_stack: this.temp_return append from storage call_stack: call.return

execute if data storage call_stack: this.continue run data remove storage call_stack: this.items[0]
execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg0 set from storage call_stack: this.items
execute if data storage call_stack: this.continue run data modify storage call_stack: call.temp_return set from storage call_stack: this.temp_return
execute if data storage call_stack: this.continue run function dt.inventory:api/items/id/get
execute if data storage call_stack: this.continue run data modify storage call_stack: this.return set from storage call_stack: call.return

function call_stack:pop