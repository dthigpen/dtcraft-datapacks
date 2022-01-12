# say sort
function call_stack:push

# get inventory
# combine non-full stacks
# assign item ordering ranks
# merge sort
# set inventory to sorted items
function dt.inventory:api/player/items/inventory/get
function call_stack:pipe
function dt.inv_sort:internal/sort_items
function call_stack:pipe
function dt.inventory:api/player/items/inventory/replace

tellraw @s {"text":"Inventory Sorted","color":"dark_green"}

function call_stack:pop