function call_stack:push

data modify storage call_stack: this.items_in_group set from storage call_stack: this.arg0
data modify storage call_stack: this.tag set from storage call_stack: this.arg1

# execute unless data storage call_stack: this.items_in_group[0].slots run tellraw @p [{"text":"NO SLOTS: "},{"nbt":"this.items_in_group.id","storage":"call_stack:"}]

execute store success storage call_stack: this.has_slots byte 1 run data get storage call_stack: this.tag.slots

execute if data storage call_stack: {this:{has_slots:true}} run data modify storage call_stack: call.arg0 set from storage call_stack: this.tag.slots
execute if data storage call_stack: {this:{has_slots:true}} run data modify storage call_stack: call.arg1 set from storage call_stack: this.items_in_group[0].slots
execute if data storage call_stack: {this:{has_slots:true}} run data modify storage call_stack: call.arg2 set value []
execute if data storage call_stack: {this:{has_slots:true}} run function dt.crafting:internal/recipe/resolve_tags_slots_loop
execute if data storage call_stack: {this:{has_slots:true}} run data modify storage call_stack: this.tag.slots set from storage call_stack: call.return

execute if data storage call_stack: {this:{has_slots:false}} run data modify storage call_stack: this.tag.slots set value [[]]

# check if any slots are reduced to 0
data modify storage call_stack: call.arg0 set from storage call_stack: this.tag.slots
data modify storage call_stack: call.arg1 set value []
function dt.array:api/split_by_key
data modify storage call_stack: this.empty_slots set from storage call_stack: call.return[0]
execute if data storage call_stack: this.empty_slots[0] run data modify storage call_stack: this.tag.count set value 0


data modify storage call_stack: this.return set value {}
data modify storage call_stack: this.return.items set from storage call_stack: this.items_in_group
data modify storage call_stack: this.return.tag set from storage call_stack: this.tag
data remove storage call_stack: this.items_in_group[0]
execute if data storage call_stack: this.items_in_group[0] run data modify storage call_stack: call.arg0 set from storage call_stack: this.items_in_group
execute if data storage call_stack: this.items_in_group[0] run data modify storage call_stack: call.arg1 set from storage call_stack: this.tags[0]
execute if data storage call_stack: this.items_in_group[0] run function dt.crafting:internal/recipe/resolve_tags_group_loop
execute if data storage call_stack: this.items_in_group[0] run data modify storage call_stack: this.return set from storage call_stack: call.return


function call_stack:pop