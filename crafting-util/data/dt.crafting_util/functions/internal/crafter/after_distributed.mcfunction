# say crafter/after_distributed
function call_stack:push

data modify storage call_stack: this.distributed_items set from storage call_stack: this.arg0
data modify storage call_stack: this.new_items set from storage call_stack: this.arg1
# tellraw @p [{"text":"dist: "},{"nbt":"arg1","storage":"dtcraft:tmp"}]
# tellraw @p [{"text":"new: "},{"nbt":"arg2","storage":"dtcraft:tmp"}]
data modify storage call_stack: this.distributed_items append from storage call_stack: this.new_items[0]
data modify storage call_stack: this.distributed_items append from storage call_stack: this.new_items[1]
data modify storage call_stack: this.distributed_items append from storage call_stack: this.new_items[2]
data modify storage call_stack: this.distributed_items append from storage call_stack: this.new_items[3]
data modify storage call_stack: this.distributed_items append from storage call_stack: this.new_items[4]
data modify storage call_stack: this.distributed_items append from storage call_stack: this.new_items[5]
data modify storage call_stack: this.distributed_items append from storage call_stack: this.new_items[6]
data modify storage call_stack: this.distributed_items append from storage call_stack: this.new_items[7]
data modify storage call_stack: this.distributed_items append from storage call_stack: this.new_items[8]
data modify storage call_stack: this.result set from storage call_stack: this.distributed_items
# tellraw @p [{"text":"unified: "},{"nbt":"result","storage":"dtcraft:tmp"}]


function call_stack:pop