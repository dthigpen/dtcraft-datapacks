function call_stack:push

data modify storage call_stack: this.temp_items set from storage call_stack: this.arg0
data modify storage call_stack: this.balanced set from storage call_stack: this.arg1

# Get the free slots
data modify storage call_stack: call.arg0 set from storage call_stack: this.temp_items
function dt.crafting:internal/crafter/get_free_slots
data modify storage call_stack: this.free_slots set from storage call_stack: call.return

# slots from balanced
data modify storage call_stack: call.arg0 set from storage call_stack: this.balanced
function dt.crafting:internal/ingredient/items_to_slots
data modify storage call_stack: this.slots_existing_balanced set from storage call_stack: call.return

# the true free slots are the free_slots - balanced_slots
data modify storage call_stack: call.arg0 set from storage call_stack: this.free_slots
data modify storage call_stack: call.arg1 set from storage call_stack: this.slots_existing_balanced
function dt.array:api/difference
data modify storage call_stack: this.free_slots set from storage call_stack: call.return
execute store result score #num_free dt.tmp run data get storage call_stack: this.free_slots

# Get all items that have the id of the first item
data modify storage call_stack: call.arg0 set from storage call_stack: this.temp_items
data modify storage call_stack: call.arg1 set value {id:""}
data modify storage call_stack: call.arg1.id set from storage call_stack: this.temp_items[0].id
function dt.array:api/split_by_key
data modify storage call_stack: this.items_of_id set from storage call_stack: call.return[0]
data modify storage call_stack: this.temp_items set from storage call_stack: call.return[1]

# item slots
data modify storage call_stack: call.arg0 set from storage call_stack: this.items_of_id
function dt.crafting:internal/ingredient/items_to_slots
data modify storage call_stack: this.item_slots set from storage call_stack: call.return

# Max potential slots
data modify storage call_stack: call.arg0 set from storage call_stack: this.item_slots
data modify storage call_stack: call.arg1 set from storage call_stack: this.free_slots
function dt.array:api/concat
data modify storage call_stack: this.new_slots set from storage call_stack: call.return

# Get array of free slot zeros
data modify storage call_stack: this.zeros set value []
execute if score #num_free dt.tmp matches 1 run data modify storage call_stack: call.arg0 set value 1
execute if score #num_free dt.tmp matches 2 run data modify storage call_stack: call.arg0 set value 2
execute if score #num_free dt.tmp matches 3 run data modify storage call_stack: call.arg0 set value 3
execute if score #num_free dt.tmp matches 4 run data modify storage call_stack: call.arg0 set value 4
execute if score #num_free dt.tmp matches 5 run data modify storage call_stack: call.arg0 set value 5
execute if score #num_free dt.tmp matches 6 run data modify storage call_stack: call.arg0 set value 6
execute if score #num_free dt.tmp matches 7 run data modify storage call_stack: call.arg0 set value 7
execute if score #num_free dt.tmp matches 8 run data modify storage call_stack: call.arg0 set value 8
execute if score #num_free dt.tmp matches 1..8 run data modify storage call_stack: call.arg1 set value 0b
execute if score #num_free dt.tmp matches 1..8 run function dt.array:api/n_array_of
# TODO should not be using score here
execute if score #num_free dt.tmp matches 1..8 run data modify storage call_stack: this.zeros set from storage call_stack: call.return


# item slots
data modify storage call_stack: call.arg0 set from storage call_stack: this.items_of_id
function dt.crafting:internal/ingredient/items_to_counts
data modify storage call_stack: this.item_counts set from storage call_stack: call.return

# Combine slot arrays
data modify storage call_stack: call.arg0 set from storage call_stack: this.item_counts
data modify storage call_stack: call.arg1 set from storage call_stack: this.zeros
function dt.array:api/concat
data modify storage call_stack: this.unbalanced_counts set from storage call_stack: call.return


# Do the balancing
data modify storage call_stack: call.arg0 set from storage call_stack: this.unbalanced_counts
function dt.crafting:internal/crafter/balance_numbers
data modify storage call_stack: this.balanced_counts set from storage call_stack: call.return
execute store result storage call_stack: this.balanced_counts_size int 1 run data get storage call_stack: this.balanced_counts

# Get the output ready
data modify storage call_stack: this.template_item set from storage call_stack: this.items_of_id[0]
data modify storage call_stack: this.template_item.Slot set value -1b
data modify storage call_stack: this.template_item.Count set value 0b
# TODO could optionally do this iff size is not equal to items_of_id size
data modify storage call_stack: call.arg0 set from storage call_stack: this.balanced_counts_size
data modify storage call_stack: call.arg1 set from storage call_stack: this.template_item
function dt.array:api/n_array_of
data modify storage call_stack: call.arg0 set from storage call_stack: call.return
data modify storage call_stack: call.arg1 set from storage call_stack: this.balanced_counts
function dt.crafting:internal/crafter/set_counts
data modify storage call_stack: this.items_of_id_balanced set from storage call_stack: call.return

execute store result score #num_items dt.tmp run data get storage call_stack: this.items_of_id_balanced
execute store result score #new_slots dt.tmp run data get storage call_stack: this.new_slots

#tellraw @p [{"nbt":"this.items_of_id_balanced","storage":"call_stack:"}]
#tellraw @p [{"nbt":"this.new_slots","storage":"call_stack:"}]

execute unless score #num_items dt.tmp <= #new_slots dt.tmp run data modify storage call_stack: this.items_of_id_balanced set from storage call_stack: this.items_of_id
execute unless score #num_items dt.tmp <= #new_slots dt.tmp run say yoo
execute if score #num_items dt.tmp <= #new_slots dt.tmp run data modify storage call_stack: call.arg0 set from storage call_stack: this.items_of_id_balanced
execute if score #num_items dt.tmp <= #new_slots dt.tmp run data modify storage call_stack: call.arg1 set from storage call_stack: this.new_slots
execute if score #num_items dt.tmp <= #new_slots dt.tmp run function dt.crafting:internal/crafter/set_slots
execute if score #num_items dt.tmp <= #new_slots dt.tmp run data modify storage call_stack: this.items_of_id_balanced set from storage call_stack: call.return

# append the balanced items of this id to the balanced list
data modify storage call_stack: call.arg0 set from storage call_stack: this.balanced
data modify storage call_stack: call.arg1 set from storage call_stack: this.items_of_id_balanced
function dt.array:api/concat
data modify storage call_stack: this.balanced set from storage call_stack: call.return

execute unless data storage call_stack: this.temp_items[0] run data modify storage call_stack: this.return set from storage call_stack: this.balanced
execute if data storage call_stack: this.temp_items[0] run data modify storage call_stack: call.arg0 set from storage call_stack: this.temp_items
execute if data storage call_stack: this.temp_items[0] run data modify storage call_stack: call.arg1 set from storage call_stack: this.balanced
execute if data storage call_stack: this.temp_items[0] run function dt.crafting:internal/crafter/balance_items_loop
execute if data storage call_stack: this.temp_items[0] run data modify storage call_stack: this.return set from storage call_stack: call.return

function call_stack:pop