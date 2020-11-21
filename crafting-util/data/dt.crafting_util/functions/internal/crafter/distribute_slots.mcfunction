# say internal/crafter/distribute_slots
function call_stack:push

# tellraw @p {"nbt":"this.free_slots","storage":"call_stack:"}
# tellraw @p {"nbt":"this.items","storage":"call_stack:"}


data modify storage call_stack: this.temp_items set from storage call_stack: this.arg0
data modify storage call_stack: this.distributed_items set from storage call_stack: this.arg1
data modify storage call_stack: this.free_slots set from storage call_stack: this.arg2


# #region if the current item has a count of > 1 and there are free slots left, distribute it (as much as possible)
data modify storage call_stack: call.arg0 set from storage call_stack: this.temp_items[0]
data modify storage call_stack: call.arg1 set from storage call_stack: this.free_slots
function dt.crafting_util:internal/crafter/distribute_stack
data modify storage call_stack: this.new_items set from storage call_stack: call.result.new_items
data modify storage call_stack: this.new_free_slots set from storage call_stack: call.result.free_slots

data modify storage call_stack: call.arg0 set from storage call_stack: this.distributed_items
data modify storage call_stack: call.arg1 set from storage call_stack: this.new_items
function dt.crafting_util:internal/crafter/after_distributed
data modify storage call_stack: this.distributed_items set from storage call_stack: call.result

# #endregion
# execute unless data storage call_stack: this.free_slots[0] run data modify storage call_stack: this.distributed_items append from storage call_stack: this.temp_items[0]
data remove storage call_stack: this.temp_items[0]

# tellraw @p ["free: ",{"nbt":"this.free_slots","storage":"call_stack:"}]
# tellraw @p ["temp: ",{"nbt":"this.temp_items","storage":"call_stack:"}]
# base case
# execute if score int1 dt.tmp matches 1 run tellraw @p ["final: ",{"nbt":"this.distributed_items","storage":"call_stack:"}]
execute unless data storage call_stack: this.temp_items[0] run data modify storage call_stack: this.result set from storage call_stack: this.distributed_items
# execute unless data storage call_stack: this.temp_items[0] run data modify storage call_stack: this.result set from storage call_stack: this.distributed_items
# loop
execute if data storage call_stack: this.temp_items[0] run data modify storage call_stack: call.arg0 set from storage call_stack: this.temp_items
execute if data storage call_stack: this.temp_items[0] run data modify storage call_stack: call.arg1 set from storage call_stack: this.distributed_items
execute if data storage call_stack: this.temp_items[0] run data modify storage call_stack: call.arg2 set from storage call_stack: this.new_free_slots
execute if data storage call_stack: this.temp_items[0] run function dt.crafting_util:internal/crafter/distribute_slots
execute if data storage call_stack: this.temp_items[0] run data modify storage call_stack: this.result set from storage call_stack: call.result

function call_stack:pop