function call_stack:push

data modify storage call_stack: this.items set from block ~ ~ ~ Items
execute if data storage call_stack: this.items[0] run data modify storage call_stack: call.arg0 set from storage call_stack: this.items
execute if data storage call_stack: this.items[0] run data modify storage call_stack: call.arg1 set value {tag:{dt_placeholder:{owner:[]}}}
execute if data storage call_stack: this.items[0] run data modify storage call_stack: call.arg1.tag.dt_placeholder.owner set from entity @s UUID
execute if data storage call_stack: this.items[0] run function dt.array_util:api/split_by_key
execute if data storage call_stack: this.items[0] run data modify block ~ ~ ~ Items set from storage call_stack: call.result[1]

function call_stack:pop