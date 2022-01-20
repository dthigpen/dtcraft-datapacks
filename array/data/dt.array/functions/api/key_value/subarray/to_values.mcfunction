#> dt.array:api/key_value/subarray/to_values
# Convert an array of key-values to values
# @params
#   storage call_stack: call.arg0
#       array of subarrays of key-values
# @output
#   storage call_stack: this.return
#       array of subarrays of values
function dt.array:internal/funct/reducer/push
execute if data storage call_stack: this.continue run data modify storage call_stack: this.accumulator append value []
execute if data storage call_stack: this.continue run data modify storage call_stack: this.accumulator[-1] append from storage call_stack: this.head[].value
execute if data storage call_stack: this.continue run function dt.array:internal/funct/args/set
execute if data storage call_stack: this.continue run function dt.array:api/key_value/subarray/to_values
function dt.array:internal/funct/pop
