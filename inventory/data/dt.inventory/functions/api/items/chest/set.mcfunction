#> dt.inventory:api/items/chest/set
# Set the contents of the double chest at the current position
# @params
#   storage call_stack: call.arg0
#       array of items
function call_stack:push
data modify storage call_stack: this.items set from storage call_stack: this.arg0
# tellraw @p ["set this.items: ",{"nbt":"this.items","storage":"call_stack:"}]
data modify storage call_stack: call.arg0 set from storage call_stack: this.items
function dt.inventory:api/items/reset_slots
data modify storage call_stack: this.items set from storage call_stack: call.return
data modify storage call_stack: call.arg0 set from storage call_stack: this.items
data modify storage call_stack: call.arg1 set value []
data modify storage call_stack: call.arg1 append from storage call_stack: this.items[].Slot
# tellraw @p ["set call.arg1: ",{"nbt":"call.arg1","storage":"call_stack:"}]
data modify storage call_stack: call.arg2 set value 26b
function dt.array:api/split/greater_than
data modify storage call_stack: this.half2 set from storage call_stack: call.return[0]
data modify storage call_stack: this.half1 set from storage call_stack: call.return[1]

# tellraw @p ["set this.half2: ",{"nbt":"this.half2","storage":"call_stack:"}]

data modify storage call_stack: call.arg0 set from storage call_stack: this.half1
function dt.inventory:api/items/reset_slots
data modify storage call_stack: this.half1 set from storage call_stack: call.return

data modify storage call_stack: call.arg0 set from storage call_stack: this.half2
function dt.inventory:api/items/reset_slots
data modify storage call_stack: this.half2 set from storage call_stack: call.return


execute if block ~ ~ ~ chest[type=right] run data modify block ~ ~ ~ Items set from storage call_stack: this.half1
execute if block ~ ~ ~ chest[type=left] run data modify block ~ ~ ~ Items set from storage call_stack: this.half2
execute if block ~ ~ ~ chest[type=left] run data modify storage call_stack: this.half2 set from storage call_stack: this.half1
execute unless block ~ ~ ~ chest[type=right] unless block ~ ~ ~ chest[type=left] run data modify block ~ ~ ~ Items set from storage call_stack: this.items

execute if block ~ ~ ~ chest[type=left,facing=north] positioned ~1 ~ ~ run data modify block ~ ~ ~ Items set from storage call_stack: this.half2
execute if block ~ ~ ~ chest[type=right,facing=north] positioned ~-1 ~ ~ run data modify block ~ ~ ~ Items set from storage call_stack: this.half2
execute if block ~ ~ ~ chest[type=left,facing=east] positioned ~ ~ ~1 run data modify block ~ ~ ~ Items set from storage call_stack: this.half2
execute if block ~ ~ ~ chest[type=right,facing=east] positioned ~ ~ ~-1 run data modify block ~ ~ ~ Items set from storage call_stack: this.half2
execute if block ~ ~ ~ chest[type=left,facing=south] positioned ~-1 ~ ~ run data modify block ~ ~ ~ Items set from storage call_stack: this.half2
execute if block ~ ~ ~ chest[type=right,facing=south] positioned ~1 ~ ~ run data modify block ~ ~ ~ Items set from storage call_stack: this.half2
execute if block ~ ~ ~ chest[type=left,facing=west] positioned ~ ~ ~-1 run data modify block ~ ~ ~ Items set from storage call_stack: this.half2
execute if block ~ ~ ~ chest[type=right,facing=west] positioned ~ ~ ~1 run data modify block ~ ~ ~ Items set from storage call_stack: this.half2

function call_stack:pop