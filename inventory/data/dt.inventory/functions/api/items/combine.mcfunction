#> dt.inventory:api/items/combine
# combine multiple partial item stacks into as few item stacks as possible
# @params
#   storage call_stack: call.arg0
#       list of items
# @output
#   storage call_stack: call.return
#       list of items
function call_stack:push

data modify storage call_stack: this.items set from storage call_stack: this.arg0

data modify storage call_stack: call.arg0 set from storage call_stack: this.items
function dt.inventory:api/shulker/items/set2

function dt.inventory:api/shulker/items/clear
execute in overworld positioned 2999999 255 2999999 run function dt.inventory:api/shulker/loot/insert/block2

function dt.inventory:api/shulker/items/get
data modify storage call_stack: this.return set from storage call_stack: call.return
function call_stack:pop