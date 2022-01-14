function call_stack:push
data modify storage call_stack: call.arg0 set from storage call_stack: this.arg0
function dt.inventory:api/items/combine2
# data modify storage call_stack: call.arg0 set from storage call_stack: this.arg0
# function dt.inventory:api/items/combine
function call_stack:pipe
function dt.inv_sort:internal/assign_order_values_loop
function call_stack:pipe
function dt.array:api/sort/merge_sort
data modify storage call_stack: call.arg0 set value []
data modify storage call_stack: call.arg0 append from storage call_stack: call.return[].value
function dt.inventory:api/items/reset_slots
data modify storage call_stack: this.return set from storage call_stack: call.return
function call_stack:pop