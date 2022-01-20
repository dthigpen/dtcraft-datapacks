#> dt.inventory:api/items/chest/get
# Get items from the block at the current position. If it is a double chest all items will be returned.
# @output
#   storage call_stack: this.return
#       array of items
function call_stack:push

# data modify storage call_stack: this.primary_slots set from block ~ ~ ~ Items
data modify storage call_stack: this.items_to_shift set value []
data modify storage call_stack: this.return set value []

execute unless block ~ ~ ~ chest[type=left] unless block ~ ~ ~ chest[type=right] run data modify storage call_stack: this.return append from block ~ ~ ~ Items[]

execute if block ~ ~ ~ chest[type=left,facing=north] positioned ~ ~ ~ run data modify storage call_stack: this.items_to_shift append from block ~ ~ ~ Items[]
execute if block ~ ~ ~ chest[type=left,facing=north] positioned ~1 ~ ~ run data modify storage call_stack: this.return append from block ~ ~ ~ Items[]

execute if block ~ ~ ~ chest[type=right,facing=north] positioned ~ ~ ~ run data modify storage call_stack: this.return append from block ~ ~ ~ Items[]
execute if block ~ ~ ~ chest[type=right,facing=north] positioned ~-1 ~ ~ run data modify storage call_stack: this.items_to_shift append from block ~ ~ ~ Items[]

execute if block ~ ~ ~ chest[type=left,facing=east] positioned ~ ~ ~ run data modify storage call_stack: this.items_to_shift append from block ~ ~ ~ Items[]
execute if block ~ ~ ~ chest[type=left,facing=east] positioned ~ ~ ~1 run data modify storage call_stack: this.return append from block ~ ~ ~ Items[]

execute if block ~ ~ ~ chest[type=right,facing=east] positioned ~ ~ ~ run data modify storage call_stack: this.return append from block ~ ~ ~ Items[]
execute if block ~ ~ ~ chest[type=right,facing=east] positioned ~ ~ ~-1 run data modify storage call_stack: this.items_to_shift append from block ~ ~ ~ Items[]

execute if block ~ ~ ~ chest[type=left,facing=south] positioned ~ ~ ~ run data modify storage call_stack: this.items_to_shift append from block ~ ~ ~ Items[]
execute if block ~ ~ ~ chest[type=left,facing=south] positioned ~-1 ~ ~ run data modify storage call_stack: this.return append from block ~ ~ ~ Items[]

execute if block ~ ~ ~ chest[type=right,facing=south] positioned ~ ~ ~ run data modify storage call_stack: this.return append from block ~ ~ ~ Items[]
execute if block ~ ~ ~ chest[type=right,facing=south] positioned ~1 ~ ~ run data modify storage call_stack: this.items_to_shift append from block ~ ~ ~ Items[]

execute if block ~ ~ ~ chest[type=left,facing=west] positioned ~ ~ ~ run data modify storage call_stack: this.items_to_shift append from block ~ ~ ~ Items[]
execute if block ~ ~ ~ chest[type=left,facing=west] positioned ~ ~ ~-1 run data modify storage call_stack: this.return append from block ~ ~ ~ Items[]

execute if block ~ ~ ~ chest[type=right,facing=west] positioned ~ ~ ~ run data modify storage call_stack: this.return append from block ~ ~ ~ Items[]
execute if block ~ ~ ~ chest[type=right,facing=west] positioned ~ ~ ~1 run data modify storage call_stack: this.items_to_shift append from block ~ ~ ~ Items[]


data modify storage call_stack: call.arg0 set value []
data modify storage call_stack: call.arg0 append from storage call_stack: this.items_to_shift[].Slot
data modify storage call_stack: call.arg1 set value 27
function dt.array:api/map/math/add
function call_stack:pipe
function dt.array:api/map/type/to_byte
data modify storage call_stack: call.arg0 set from storage call_stack: this.items_to_shift
data modify storage call_stack: call.arg1 set from storage call_stack: call.return
function dt.inventory:internal/apply/slot
data modify storage call_stack: this.return append from storage call_stack: call.return[]

function call_stack:pop