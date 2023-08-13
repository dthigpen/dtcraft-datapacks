#> dt.inventory:api/items/loot/block/insert
# Simulate loot insert nbt storage items into a block
# @input
#   storage call_stack: call.arg0
#       nbt[] source items, such as chest Items copied into storage
#   storage call_stack: call.arg1
#       optional int max slot size defaults to 27
# @output
#   storage call_stack: this.return
#       nbt[] remaining source items
function call_stack:push
data modify storage call_stack: this.source_items set from storage call_stack: this.arg0
data modify storage call_stack: this.max_slots set value 27

execute if block ~ ~ ~ #dt.inventory:container_27 run data modify storage call_stack: this.max_slots set value 27
execute if block ~ ~ ~ #dt.inventory:container_9 run data modify storage call_stack: this.max_slots set value 9
execute if block ~ ~ ~ #dt.inventory:container_5 run data modify storage call_stack: this.max_slots set value 5
# TODO add case for warning about not matching either size

data modify storage call_stack: this.dest_items set from block ~ ~ ~ Items

data modify storage call_stack: call.arg0 set from storage call_stack: this.source_items
data modify storage call_stack: call.arg1 set from storage call_stack: this.dest_items
data modify storage call_stack: call.arg2 set from storage call_stack: this.max_slots
function dt.inventory:api/items/loot/insert
data modify storage call_stack: this.return set from storage call_stack: call.return[0]
data modify block ~ ~ ~ Items set from storage call_stack: call.return[1]

function call_stack:pop