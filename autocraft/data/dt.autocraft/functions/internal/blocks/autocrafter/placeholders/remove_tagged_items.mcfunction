function call_stack:push

function dt.autocraft:internal/blocks/autocrafter/get_items_from_block_or_entity
data modify storage call_stack: this.items set from storage call_stack: call.result
execute if data storage call_stack: this.items[0] run data modify storage call_stack: call.arg0 set from storage call_stack: this.items
execute if data storage call_stack: this.items[0] run data modify storage call_stack: call.arg1 set value {tag:{dt_placeholder:{owner:[]}}}
execute if data storage call_stack: this.items[0] run data modify storage call_stack: call.arg1.tag.dt_placeholder.owner set from entity @s UUID
execute if data storage call_stack: this.items[0] run function dt.array_util:api/split_by_key
execute if data storage call_stack: this.items[0] if data storage call_stack: call.result[0][0] run data modify storage call_stack: this.has_tagged_items set value true
execute if data storage call_stack: this.has_tagged_items run data modify storage call_stack: call.arg0 set from storage call_stack: call.result[1]
execute if data storage call_stack: this.has_tagged_items run function dt.autocraft:internal/blocks/autocrafter/set_items_for_block_or_entity

function call_stack:pop