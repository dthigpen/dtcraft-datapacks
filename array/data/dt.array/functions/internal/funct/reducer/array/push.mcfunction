#> dt.array:internal/funct/reducer/array/push
# Push a new array returning reducer scope onto the stack
# @params
#   storage call_stack: call.arg0
#       array
function dt.array:internal/funct/reducer/push_and_get_args
execute unless data storage call_stack: this.accumulator run data modify storage call_stack: this.accumulator set value []
function dt.array:internal/funct/reducer/base_case/on_empty