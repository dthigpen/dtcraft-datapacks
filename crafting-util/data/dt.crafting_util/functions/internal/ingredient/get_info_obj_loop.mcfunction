
function call_stack:push
data modify storage call_stack: this.items set from storage call_stack: this.arg0
data modify storage call_stack: this.counts set from storage call_stack: this.arg1

data modify storage call_stack: this.pair set value {id:""}
data modify storage call_stack: this.pair.id set from storage call_stack: this.items[0].id

data modify storage call_stack: call.arg0 set from storage call_stack: this.items
data modify storage call_stack: call.arg1 set from storage call_stack: this.pair
function dt.array_util:api/split_by_key
data modify storage call_stack: this.matching set from storage call_stack: call.result[0]
data modify storage call_stack: this.not_matching set from storage call_stack: call.result[1]

data modify storage call_stack: call.arg0 set from storage call_stack: this.matching
function dt.crafting_util:internal/ingredient/items_to_slots
data modify storage call_stack: this.pair.slots set from storage call_stack: call.result
execute store result storage call_stack: this.pair.count int 1 run data get storage call_stack: this.pair.slots

data modify storage call_stack: this.counts append from storage call_stack: this.pair
#tellraw @p [{"text":" obj: "},{"nbt":"this.pair","storage":"call_stack:"}]
data modify storage call_stack: this.items set from storage call_stack: this.not_matching
#data remove storage call_stack: this.items[0]
execute unless data storage call_stack: this.items[0] run data modify storage call_stack: this.result set from storage call_stack: this.counts
execute if data storage call_stack: this.items[0] run data modify storage call_stack: call.arg0 set from storage call_stack: this.items
execute if data storage call_stack: this.items[0] run data modify storage call_stack: call.arg1 set from storage call_stack: this.counts
execute if data storage call_stack: this.items[0] run function dt.crafting_util:internal/ingredient/get_info_obj_loop
execute if data storage call_stack: this.items[0] run data modify storage call_stack: this.result set from storage call_stack: call.result

function call_stack:pop