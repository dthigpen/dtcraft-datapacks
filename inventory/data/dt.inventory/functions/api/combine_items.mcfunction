function call_stack:push

data modify storage call_stack: this.items set from storage call_stack: this.arg0

data modify storage call_stack: call.arg0 set from storage call_stack: this.items
function dt.inventory:api/shulker/set_items2

function dt.inventory:api/shulker/clear_items
execute positioned 2999999 255 2999999 run function dt.inventory:api/shulker/loot/insert/here2

function dt.inventory:api/shulker/get_items
data modify storage call_stack: this.result set from storage call_stack: call.result
function call_stack:pop