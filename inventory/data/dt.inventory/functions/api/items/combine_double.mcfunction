#> dt.inventory:api/items/combine_double
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
function dt.array:api/split_half
data modify storage call_stack: this.half1 set from storage call_stack: call.return[0]
data modify storage call_stack: this.half2 set from storage call_stack: call.return[1]

# clear the shulker being used and the double chest
function dt.inventory:api/shulker/items/clear2
data modify block 2999999 253 2999999 Items set value []

# first half
data modify storage call_stack: call.arg0 set from storage call_stack: this.half1
function dt.inventory:api/shulker/items/set2

# loot to double chest
execute positioned 2999999 253 2999999 run function dt.inventory:api/shulker/loot/insert/block2
function dt.inventory:api/shulker/items/clear2
data modify storage call_stack: call.arg0 set from storage call_stack: this.half2
function dt.inventory:api/shulker/items/set2

# loot to double chest
execute positioned 2999999 253 2999999 run function dt.inventory:api/shulker/loot/insert/block2

data modify storage call_stack: this.return set from block 2999999 253 2999999 Items
function call_stack:pop