# say sort
function call_stack:push

# get inventory
function dt.inventory:api/player/items/inventory/get
data modify storage call_stack: this.remaining_items set from storage call_stack: call.result

# combine non-full stacks
data modify storage call_stack: call.arg0 set from storage call_stack: this.remaining_items
function dt.inventory:api/items/combine
data modify storage call_stack: this.remaining_items set from storage call_stack: call.result

# assign item ordering ranks
data modify storage call_stack: call.arg0 set from storage call_stack: this.remaining_items
data modify storage call_stack: call.arg1 set value []
function dt.inv_sort:internal/assign_order_values_loop
data modify storage call_stack: this.ranked_items set from storage call_stack: call.result

# sort
data modify storage call_stack: this.sorted_items set value []
data modify storage call_stack: call.arg0 set from storage call_stack: this.ranked_items
function dt.array:api/sort/merge_sort
data modify storage call_stack: this.sorted_items append from storage call_stack: call.result[].value

# clear existing player inventory
execute if data storage call_stack: this.sorted_items[0] run function dt.inventory:api/shulker/items/clear
execute if data storage call_stack: this.sorted_items[0] run data modify storage call_stack: call.arg0 set value []
execute if data storage call_stack: this.sorted_items[0] run function dt.inventory:api/player/items/inventory/replace

# set inventory to sorted items
execute if data storage call_stack: this.sorted_items[0] run data modify storage call_stack: call.arg0 set from storage call_stack: this.sorted_items
execute if data storage call_stack: this.sorted_items[0] run function dt.inventory:api/player/items/inventory/replace

tellraw @s {"text":"Inventory Sorted","color":"dark_green"}

function call_stack:pop