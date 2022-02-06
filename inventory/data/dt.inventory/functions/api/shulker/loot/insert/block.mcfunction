#> dt.inventory:api/shulker/loot/insert/block
# insert items from the shulker into the block

function call_stack:push

# Temp block to hold items when doing cross dimension operations
data modify storage call_stack: call.arg0 set value []
data modify storage call_stack: call.arg0 set from block ~ ~ ~ Items
function dt.inventory:api/shulker/items/set2

execute in overworld positioned 2999999 254 2999999 run loot insert ~ ~ ~ mine 2999999 255 2999999 minecraft:air{drop_contents:true}
execute in overworld positioned 2999999 254 2999999 run data modify storage call_stack: this.new_items set from block ~ ~ ~ Items

data modify block ~ ~ ~ Items set from storage call_stack: this.new_items

function call_stack:pop