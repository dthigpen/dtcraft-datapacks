#> dt.array:api/reduce/math/are_all_greater_than
# given an array of numbers and a value, return true if all numbers are greater than the value
# @params
#   storage call_stack: call.arg0
#       array of numbers
#   storage call_stack: call.arg1
#       int value
# @output
#   storage call_stack: this.return
#       true
data modify storage call_stack: call.accumulator set value true
function dt.array:api/func/reducer/push
execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg0 set from storage call_stack: this.head
execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg1 set from storage call_stack: this.arg1
execute if data storage call_stack: this.continue run function dt.array:api/helper/math/is_greater_than
execute if data storage call_stack: this.continue unless data storage call_stack: call.return run data modify storage call_stack: this.accumulator set value false
execute if data storage call_stack: this.continue unless data storage call_stack: call.return run data modify storage call_stack: this.tail set value []
execute if data storage call_stack: this.continue run function dt.array:api/func/reducer/args/set
execute if data storage call_stack: this.continue run function dt.array:api/reduce/math/are_all_greater_than
function dt.array:api/func/pop