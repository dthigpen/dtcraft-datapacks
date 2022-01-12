function call_stack:push
data modify storage call_stack: call.arg0 set from storage call_stack: this.arg0
function dt.inventory:api/items/combine_double
function call_stack:pipe
function dt.inv_sort:internal/assign_order_values_loop
function call_stack:pipe
function dt.array:api/sort/merge_sort
data modify storage call_stack: this.return set value []
data modify storage call_stack: this.return append from storage call_stack: call.return[].value

function call_stack:pop