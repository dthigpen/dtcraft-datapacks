function call_stack:push
function dt.inventory:api/items/chest/get
function call_stack:pipe
function dt.inv_sort:internal/sort_items
function call_stack:pipe
function dt.inventory:api/items/chest/set
# data modify block ~ ~ ~ Items set from storage call_stack: call.return
tellraw @s {"text":"Block Sorted","color":"dark_green"}
scoreboard players set $sorted dt.inv_sort 1
function call_stack:pop