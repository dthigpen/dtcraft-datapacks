#> dt.array:api/map/key_value/subarray/to_values
# Maps each value subarray of key-value pairs to a subarray of values
# @params
#   storage call_stack: call.arg0
#       array of subarrays of key-values
# @output
#   storage call_stack: this.return
#       array of subarrays of values
function dt.array:api/funct/reducer/to/array/push
execute if data storage call_stack: this.continue run data modify storage call_stack: this.accumulator append value []
execute if data storage call_stack: this.continue run data modify storage call_stack: this.accumulator[-1] append from storage call_stack: this.head[].value
execute if data storage call_stack: this.continue run function dt.array:api/funct/reducer/args/set
execute if data storage call_stack: this.continue run function dt.array:api/map/key_value/subarray/to_values
function dt.array:api/funct/pop
