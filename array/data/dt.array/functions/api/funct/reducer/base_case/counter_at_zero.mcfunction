#> dt.array:api/funct/reducer/base_case/counter_at_zero

function dt.array:internal/funct/reducer/base_case/clear
data modify storage call_stack: call.arg0 set from storage call_stack: this.counter
data modify storage call_stack: call.arg1 set value 0
function dt.array:api/helper/math/is_less_than_or_equal
execute unless data storage call_stack: call.return run data modify storage call_stack: this.continue set value true
function dt.array:internal/funct/reducer/base_case/return_statement

