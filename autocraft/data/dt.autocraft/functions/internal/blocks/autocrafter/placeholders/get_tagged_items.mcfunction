function call_stack:push

function dt.autocraft:internal/blocks/autocrafter/get_items_from_block_or_entity
data modify storage call_stack: this.items set from storage call_stack: call.result

data modify storage call_stack: this.result set value []
execute if data storage call_stack: this.items[0] run data modify storage call_stack: call.arg0 set from storage call_stack: this.items
execute if data storage call_stack: this.items[0] run data modify storage call_stack: call.arg1 set value {tag:{dt_placeholder:{}}}
execute if data storage call_stack: this.items[0] run function dt.array:api/split_by_key
execute if data storage call_stack: this.items[0] run data modify storage call_stack: this.result set from storage call_stack: call.result[0]
function call_stack:pop