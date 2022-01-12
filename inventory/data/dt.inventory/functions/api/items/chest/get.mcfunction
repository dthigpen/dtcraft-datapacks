#> dt.inventory:api/items/chest/get
# Get items from the block at the current position. If it is a double chest all items will be returned.
# TODO: update slots
# @output
#   storage call_stack: this.return
#       array of items
function call_stack:push

data modify storage call_stack: this.return set from block ~ ~ ~ Items

execute if block ~ ~ ~ chest[type=left,facing=north] positioned ~1 ~ ~ run data modify storage call_stack: this.return append from block ~ ~ ~ Items[]
execute if block ~ ~ ~ chest[type=right,facing=north] positioned ~-1 ~ ~ run data modify storage call_stack: this.return append from block ~ ~ ~ Items[]
execute if block ~ ~ ~ chest[type=left,facing=east] positioned ~ ~ ~1 run data modify storage call_stack: this.return append from block ~ ~ ~ Items[]
execute if block ~ ~ ~ chest[type=right,facing=east] positioned ~ ~ ~-1 run data modify storage call_stack: this.return append from block ~ ~ ~ Items[]
execute if block ~ ~ ~ chest[type=left,facing=south] positioned ~-1 ~ ~ run data modify storage call_stack: this.return append from block ~ ~ ~ Items[]
execute if block ~ ~ ~ chest[type=right,facing=south] positioned ~1 ~ ~ run data modify storage call_stack: this.return append from block ~ ~ ~ Items[]
execute if block ~ ~ ~ chest[type=left,facing=west] positioned ~ ~ ~-1 run data modify storage call_stack: this.return append from block ~ ~ ~ Items[]
execute if block ~ ~ ~ chest[type=right,facing=west] positioned ~ ~ ~1 run data modify storage call_stack: this.return append from block ~ ~ ~ Items[]

# TODO reset the slots so that they range from 0b-53b

function call_stack:pop