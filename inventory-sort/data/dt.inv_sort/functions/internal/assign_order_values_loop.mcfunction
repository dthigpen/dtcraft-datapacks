function call_stack:push
data modify storage call_stack: this.remaining_items set from storage call_stack: this.arg0
data modify storage call_stack: this.processed_items set value []
data modify storage call_stack: this.processed_items set from storage call_stack: this.arg1

# base-case: input is empty list, return processed_items
# case 1: input is non-empty list

# case 1
# get the index
execute if data storage call_stack: this.remaining_items[0] run data modify storage call_stack: call.arg0 set from storage dt.inv_sort: group_ids
execute if data storage call_stack: this.remaining_items[0] run data modify storage call_stack: call.arg1 set from storage call_stack: this.remaining_items[0].id
execute if data storage call_stack: this.remaining_items[0] run function dt.array:api/index_of
execute if data storage call_stack: this.remaining_items[0] run data modify storage call_stack: this.index set from storage call_stack: call.return

execute if data storage call_stack: this.remaining_items[0] if data storage call_stack: {this:{index:-1}} run data modify storage call_stack: this.index set value 99999
execute if data storage call_stack: this.remaining_items[0] run data modify storage call_stack: this.processed_items append value {key:0, value:{}}
execute if data storage call_stack: this.remaining_items[0] run data modify storage call_stack: this.processed_items[-1].key set from storage call_stack: this.index
execute if data storage call_stack: this.remaining_items[0] run data modify storage call_stack: this.processed_items[-1].value set from storage call_stack: this.remaining_items[0] 
execute if data storage call_stack: this.remaining_items[0] run data remove storage call_stack: this.remaining_items[0]

# base-case
execute unless data storage call_stack: this.remaining_items[0] run data modify storage call_stack: this.return set from storage call_stack: this.processed_items

# case 1 recurse
execute if data storage call_stack: this.remaining_items[0] run data modify storage call_stack: call.arg0 set from storage call_stack: this.remaining_items
execute if data storage call_stack: this.remaining_items[0] run data modify storage call_stack: call.arg1 set from storage call_stack: this.processed_items
execute if data storage call_stack: this.remaining_items[0] run function dt.inv_sort:internal/assign_order_values_loop
execute if data storage call_stack: this.remaining_items[0] run data modify storage call_stack: this.return set from storage call_stack: call.return

# execute if data storage call_stack: this.remaining_items[0] run data modify storage call_stack: this.processed_items appe d from storage call_stack: this.

function call_stack:pop