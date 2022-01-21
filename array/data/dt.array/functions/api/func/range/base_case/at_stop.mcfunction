#> dt.array:api/func/range/base_case/at_stop
# Check if the index is at the stop value
# @params
# @output
data remove storage call_stack: this.continue
data modify storage call_stack: call.arg0 set from storage call_stack: this.func.range.index
data modify storage call_stack: call.arg1 set from storage call_stack: this.func.range.stop
function dt.array:api/helper/math/is_greater_than_or_equal
execute unless data storage call_stack: call.return run data modify storage call_stack: this.continue set value true