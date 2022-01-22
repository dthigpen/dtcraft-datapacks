#> dt.array:api/reduce/subarray/greater_than
# Reduce numbers into two subarrays, with the first being those greater than the given number and the latter less than or equal to
# @params
#   storage call_stack: call.arg0
#       array
#   storage call_stack: call.arg1
#       int greater than value
# @output
#   storage call_stack: this.return
#       array of subarrays
data modify storage call_stack: call.accumulator set value [[],[]]
function dt.array:api/func/reducer/push
execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg0 set from storage call_stack: this.head.key
execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg1 set from storage call_stack: this.arg1
execute if data storage call_stack: this.continue run function dt.array:api/helper/math/is_greater_than
execute if data storage call_stack: this.continue if data storage call_stack: call.return run data modify storage call_stack: this.accumulator[0] append from storage call_stack: this.head
execute if data storage call_stack: this.continue unless data storage call_stack: call.return run data modify storage call_stack: this.accumulator[1] append from storage call_stack: this.head

execute if data storage call_stack: this.continue run function dt.array:api/func/reducer/args/set
execute if data storage call_stack: this.continue run function dt.array:api/reduce/subarray/greater_than
function dt.array:api/func/pop
