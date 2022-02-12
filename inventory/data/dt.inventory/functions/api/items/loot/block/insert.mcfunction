function call_stack:push
data modify storage call_stack: this.source_items set from storage call_stack: this.arg0
data modify storage call_stack: this.max_slots set value 27
# TODO: replace with tags by container size
execute if block ~ ~ ~ #dt.inventory:container_27 run data modify storage call_stack: this.max_slots set value 27
execute if block ~ ~ ~ #dt.inventory:container_9 run data modify storage call_stack: this.max_slots set value 9
execute if block ~ ~ ~ #dt.inventory:container_5 run data modify storage call_stack: this.max_slots set value 5

data modify storage call_stack: this.dest_items set from block ~ ~ ~ Items

data modify storage call_stack: call.arg0 set from storage call_stack: this.source_items
data modify storage call_stack: call.arg1 set from storage call_stack: this.dest_items
data modify storage call_stack: call.arg2 set from storage call_stack: this.max_slots
function dt.inventory:api/items/loot/insert
data modify storage call_stack: this.return set from storage call_stack: call.return[0]
tellraw @p ["insert call.return: ",{"nbt":"call.return","storage":"call_stack:"}]
data modify block ~ ~ ~ Items set from storage call_stack: call.return[1]

function call_stack:pop