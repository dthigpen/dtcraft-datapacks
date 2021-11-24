function call_stack:push

function dt.autocraft:internal/util/get_items_from_block_or_entity
data modify storage call_stack: this.items set from storage call_stack: call.return

data modify storage call_stack: this.return set value []
execute if data storage call_stack: this.items[0] run data modify storage call_stack: call.arg0 set from storage call_stack: this.items
execute if data storage call_stack: this.items[0] run data modify storage call_stack: call.arg1 set value {tag:{dt_placeholder:{}}}
execute if data storage call_stack: this.items[0] run function dt.array:api/split_by_key
execute if data storage call_stack: this.items[0] run data modify storage call_stack: this.return set from storage call_stack: call.return[0]

function call_stack:pop