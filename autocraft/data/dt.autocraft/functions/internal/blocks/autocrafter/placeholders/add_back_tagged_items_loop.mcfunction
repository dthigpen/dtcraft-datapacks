function call_stack:push

data modify storage call_stack: this.tagged_items set from storage call_stack: this.arg0
data modify storage call_stack: this.new_items set from storage call_stack: this.arg1
data modify storage call_stack: this.remaining_tags set from storage call_stack: this.arg2
data modify storage call_stack: this.remaining_items set from storage call_stack: this.arg3

# Get the item at the corresponding slot
data modify storage call_stack: call.arg0 set from storage call_stack: this.remaining_items
data modify storage call_stack: call.arg1 set value {Slot:-1b}
data modify storage call_stack: call.arg1.Slot set from storage call_stack: this.tagged_items[0].tag.dt_placeholder.slot
function dt.array_util:api/split_by_key
data modify storage call_stack: this.matching_item set from storage call_stack: call.result[0][0]
# Drop any additional items that came up with the same slot since something would be wrong in that case
data modify storage call_stack: this.remaining_items set from storage call_stack: call.result[1]

# Attempt to combine them
data modify storage call_stack: this.items_to_combine set value []
data modify storage call_stack: this.items_to_combine append from storage call_stack: this.tagged_items[0]
data modify storage call_stack: this.items_to_combine[0].Slot set from storage call_stack: this.tagged_items[0].tag.dt_placeholder.slot
data modify storage call_stack: this.items_to_combine append from storage call_stack: this.matching_item
data modify storage call_stack: call.arg0 set from storage call_stack: this.items_to_combine
function dt.inv_util:api/combine_items
data modify storage call_stack: this.combined_items set from storage call_stack: call.result
data modify storage call_stack: this.combined_items[0].Slot set from storage call_stack: this.combined_items[0].tag.dt_placeholder.slot

# If the combined items is greater than one stack then somehing happened
# Do not try to change
execute if data storage call_stack: this.combined_items[1] run data modify storage call_stack: this.remaining_tags append from storage call_stack: this.tagged_items[0]
execute if data storage call_stack: this.combined_items[1] run data modify storage call_stack: this.remaining_items append from storage call_stack: this.matching_item[0]
# Otherwise add combined items to the new items
execute unless data storage call_stack: this.combined_items[1] run data modify storage call_stack: this.new_items append from storage call_stack: this.combined_items[0]

data remove storage call_stack: this.tagged_items[0]

#execute unless data storage call_stack: this.tagged_items[0] run tellraw @p [{"nbt":"this.remaining_items","storage":"call_stack:"}]
execute unless data storage call_stack: this.tagged_items[0] run data modify storage call_stack: this.result set value {}
execute unless data storage call_stack: this.tagged_items[0] run data modify storage call_stack: this.result.remaining_tags set from storage call_stack: this.remaining_tags
execute unless data storage call_stack: this.tagged_items[0] run data modify storage call_stack: call.arg0 set from storage call_stack: this.new_items
execute unless data storage call_stack: this.tagged_items[0] run data modify storage call_stack: call.arg1 set from storage call_stack: this.remaining_items
execute unless data storage call_stack: this.tagged_items[0] run function dt.array_util:api/concat
execute unless data storage call_stack: this.tagged_items[0] run data modify storage call_stack: this.result.new_items set from storage call_stack: call.result

execute if data storage call_stack: this.tagged_items[0] run data modify storage call_stack: call.arg0 set from storage call_stack: this.tagged_items
execute if data storage call_stack: this.tagged_items[0] run data modify storage call_stack: call.arg1 set from storage call_stack: this.new_items
execute if data storage call_stack: this.tagged_items[0] run data modify storage call_stack: call.arg2 set from storage call_stack: this.remaining_tags
execute if data storage call_stack: this.tagged_items[0] run data modify storage call_stack: call.arg3 set from storage call_stack: this.remaining_items
execute if data storage call_stack: this.tagged_items[0] run function dt.autocraft:internal/blocks/autocrafter/placeholders/add_back_tagged_items_loop
execute if data storage call_stack: this.tagged_items[0] run data modify storage call_stack: this.result set from storage call_stack: call.result

function call_stack:pop