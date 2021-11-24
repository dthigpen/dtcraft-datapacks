function call_stack:push

data modify storage call_stack: this.items set from block ~ ~ ~ Items

# Get the items with existing tags
execute if data storage call_stack: this.items[0] run data modify storage call_stack: call.arg0 set from storage call_stack: this.items
execute if data storage call_stack: this.items[0] run data modify storage call_stack: call.arg1 set value {tag:{dt_placeholder:{owner:[]}}}
execute if data storage call_stack: this.items[0] run data modify storage call_stack: call.arg1.tag.dt_placeholder.owner set from entity @s UUID
execute if data storage call_stack: this.items[0] run function dt.array:api/split_by_key
execute if data storage call_stack: this.items[0] run data modify storage call_stack: this.pretagged_items set from storage call_stack: call.return[0]
execute if data storage call_stack: this.items[0] run data modify storage call_stack: this.untagged_items set from storage call_stack: call.return[1]
#tellraw @p [{"text":"match: "},{"nbt":"this.pretagged_items","storage":"call_stack:"}]

execute if data storage call_stack: this.items[0] run data modify storage call_stack: call.arg0 set from storage call_stack: this.pretagged_items
execute if data storage call_stack: this.items[0] run data modify storage call_stack: call.arg1 set value []
execute if data storage call_stack: this.items[0] run function dt.autocraft:internal/autocrafter/placeholders/add_tags_to_items_loop
execute if data storage call_stack: this.items[0] run data modify storage call_stack: this.pretagged_items set from storage call_stack: call.return

execute if data storage call_stack: this.items[0] run data modify storage call_stack: call.arg0 set from storage call_stack: this.pretagged_items
execute if data storage call_stack: this.items[0] run data modify storage call_stack: call.arg1 set from storage call_stack: this.untagged_items
execute if data storage call_stack: this.items[0] run function dt.array:api/concat
execute if data storage call_stack: this.items[0] run data modify block ~ ~ ~ Items set from storage call_stack: call.return

function call_stack:pop