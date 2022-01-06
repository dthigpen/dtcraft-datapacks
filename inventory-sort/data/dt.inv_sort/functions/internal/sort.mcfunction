# say sort
function call_stack:push

# get inventory
# combine non-full stacks
# assign item ordering ranks
# merge sort
function dt.inventory:api/player/items/inventory/get
function call_stack:pipe
function dt.inventory:api/items/combine
function call_stack:pipe
function dt.inv_sort:internal/assign_order_values_loop
function call_stack:pipe
function dt.array:api/sort/merge_sort
data modify storage call_stack: this.sorted_items set value []
data modify storage call_stack: this.sorted_items append from storage call_stack: call.return[].value

# set inventory to sorted items
data modify storage call_stack: call.arg0 set from storage call_stack: this.sorted_items
function dt.inventory:api/player/items/inventory/replace

tellraw @s {"text":"Inventory Sorted","color":"dark_green"}

function call_stack:pop