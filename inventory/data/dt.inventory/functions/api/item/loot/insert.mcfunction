function call_stack:push
data modify storage call_stack: this.source_item set from storage call_stack: this.arg0
data modify storage call_stack: this.dest_items set from storage call_stack: this.arg1
data modify storage call_stack: this.max_slots set value 127b
data modify storage call_stack: this.max_slots set from storage call_stack: this.arg2

data modify storage call_stack: call.arg0 set from storage call_stack: this.source_item.id
function dt.inventory:internal/item/get_item_data_from_name
data modify storage call_stack: this.stack_size set value 0
data modify storage call_stack: this.stack_size set from storage call_stack: call.return.stackSize

# turn dest items to key value pairs
# get items that are equal to it in the dest_items
# cumulative add the counts

data modify storage call_stack: call.arg0 set from storage call_stack: this.dest_items
function dt.array:api/map/key_value/from_values
function call_stack:pipe
data remove storage call_stack: call.arg0[].key.Slot
data remove storage call_stack: call.arg0[].key.Count
data modify storage call_stack: call.arg1 set from storage call_stack: this.source_item
data remove storage call_stack: call.arg1.Slot
data remove storage call_stack: call.arg1.Count
function dt.array:api/reduce/subarray/equal_to
data modify storage call_stack: this.dest_items_of_same set value []
data modify storage call_stack: this.dest_items_of_same append from storage call_stack: call.return[0][].value
data modify storage call_stack: this.dest_items_of_diff set value []
data modify storage call_stack: this.dest_items_of_diff append from storage call_stack: call.return[1][].value

data modify storage call_stack: call.arg0 set value []
data modify storage call_stack: call.arg0 append from storage call_stack: this.dest_items_of_same[].Count
execute unless data storage call_stack: call.arg0[0] run data modify storage call_stack: call.arg0 append value 0b
data modify storage call_stack: call.arg1 set from storage call_stack: this.source_item.Count
data modify storage call_stack: call.arg2 set from storage call_stack: this.stack_size
function dt.array:api/reduce/math/cumulative_add
data modify storage call_stack: this.new_counts set from storage call_stack: call.return
# TODO: compare dest_item counts with cumulative add count
# TODO: split new counts on difference line
execute store result score $same_dest_size dt.tmp run data get storage call_stack: this.dest_items_of_same
execute store result score $new_counts dt.tmp run data get storage call_stack: this.new_counts
scoreboard players operation $num_extras dt.tmp = $new_counts dt.tmp
scoreboard players operation $num_extras dt.tmp -= $same_dest_size dt.tmp
data modify storage call_stack: this.num_extras set value -1
execute store result storage call_stack: this.num_extras int 1 run scoreboard players get $num_extras dt.tmp
execute if score $num_extras dt.tmp matches 1.. run data modify storage call_stack: this.has_extras set value true
# tellraw @p ["insert $same_dest_size:",{"score":{"name":"$same_dest_size","objective":"dt.tmp"}}]
# tellraw @p ["insert $new_counts:",{"score":{"name":"$new_counts","objective":"dt.tmp"}}]
# tellraw @p ["insert $num_extras:",{"score":{"name":"$num_extras","objective":"dt.tmp"}}]
# tellraw @p ["insert this.num_extras: ",{"nbt":"this.num_extras","storage":"call_stack:"}]
# create template items
execute if data storage call_stack: this.has_extras run data modify storage call_stack: call.arg0 set from storage call_stack: this.num_extras
execute if data storage call_stack: this.has_extras run data modify storage call_stack: call.arg1 set from storage call_stack: this.source_item
execute if data storage call_stack: this.has_extras run function dt.array:api/n_array_of
execute if data storage call_stack: this.has_extras run data modify storage call_stack: this.template_items set from storage call_stack: call.return

# get unused slots
# enumerate all slots: [0..max-1]
# do set difference between enumerated and dest slots
data modify storage call_stack: call.arg0 set value 0
data modify storage call_stack: call.arg1 set from storage call_stack: this.max_slots
data modify storage call_stack: call.arg2 set value 1
function dt.array:api/enumerate
function call_stack:pipe
function dt.array:api/map/type/to_byte
function call_stack:pipe
data modify storage call_stack: call.arg1 set value []
data modify storage call_stack: call.arg1 append from storage call_stack: this.dest_items[].Slot
function dt.array:api/reduce/set/value_difference
data modify storage call_stack: this.unused_slots set from storage call_stack: call.return

# get the minimum extra slot needed
data modify storage call_stack: call.arg0 set from storage call_stack: this.unused_slots
data modify storage call_stack: call.arg1 set from storage call_stack: this.num_extras
# tellraw @p ["insert this.num_extras: ",{"nbt":"this.num_extras","storage":"call_stack:"}]
function dt.array:api/reduce/subarray/on_index
data modify storage call_stack: this.new_slots set value []
data modify storage call_stack: this.new_slots append from storage call_stack: this.dest_items_of_same[].Slot
data modify storage call_stack: this.new_slots append from storage call_stack: call.return[0][]
data modify storage call_stack: this.dest_items_of_same append from storage call_stack: this.template_items[]
data modify storage call_stack: call.arg0 set from storage call_stack: this.dest_items_of_same
data modify storage call_stack: call.arg1 set from storage call_stack: this.new_counts
function dt.inventory:internal/apply/count
data modify storage call_stack: this.dest_items_of_same set from storage call_stack: call.return

data modify storage call_stack: call.arg0 set from storage call_stack: this.dest_items_of_same
data modify storage call_stack: call.arg1 set from storage call_stack: this.new_slots
function dt.inventory:internal/apply/slot
data modify storage call_stack: this.dest_items_of_same set from storage call_stack: call.return

data modify storage call_stack: this.return set value {items:[], remaining:[]}
data modify storage call_stack: this.return.items set from storage call_stack: this.dest_items_of_diff
data modify storage call_stack: this.return.items append from storage call_stack: this.dest_items_of_same[]

scoreboard players set $actual_count dt.tmp 0
execute store result score $actual_count dt.tmp run data get storage call_stack: this.return.items
scoreboard players set $max_count dt.tmp 0
execute store result score $max_count dt.tmp run data get storage call_stack: this.max_slots
execute if score $actual_count dt.tmp > $max_count dt.tmp run data modify storage call_stack: this.return.remaining append from storage call_stack: this.return.items[-1]
execute if score $actual_count dt.tmp > $max_count dt.tmp run data remove storage call_stack: this.return.items[-1]

function call_stack:pop