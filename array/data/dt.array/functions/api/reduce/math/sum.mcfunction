#> dt.array:api/reduce/math/sum
# sum array of numbers
# @params
#   storage call_stack: call.arg0
#       array of integers
# @output
#   storage call_stack: call.return
#       integer sum of all values
data modify storage call_stack: call.accumulator set value 0
function dt.array:api/func/reducer/push
execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg0 set from storage call_stack: this.accumulator
execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg1 set from storage call_stack: this.head
execute if data storage call_stack: this.continue run function dt.array:api/helper/math/add
execute if data storage call_stack: this.continue run data modify storage call_stack: this.accumulator set from storage call_stack: call.return
execute if data storage call_stack: this.continue run function dt.array:api/func/reducer/args/set
execute if data storage call_stack: this.continue run function dt.array:api/reduce/math/sum
function dt.array:api/func/pop