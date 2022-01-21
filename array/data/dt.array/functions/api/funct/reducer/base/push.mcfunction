#> dt.array:api/funct/reducer/base/push
# Must set value of call.accumulator before call to this function
# Push a array producing reducer args and check for reducer basecase before setting this.continue or this.return
# @params
#   storage call_stack: call.accumulator
#       any value to accumulate with
function dt.array:internal/funct/reducer/args/push
function dt.array:api/funct/reducer/base_case/on_empty