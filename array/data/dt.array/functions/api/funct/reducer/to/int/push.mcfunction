#> dt.array:api/funct/reducer/to/int/push
# Push a array producing reducer args and check for reducer basecase before setting this.continue or this.return
# @params
#   storage call_stack: call.arg0
#       array
function dt.array:internal/funct/reducer/args/push
execute unless data storage call_stack: this.accumulator run data modify storage call_stack: this.accumulator set value 0
function dt.array:api/funct/reducer/base_case/on_empty