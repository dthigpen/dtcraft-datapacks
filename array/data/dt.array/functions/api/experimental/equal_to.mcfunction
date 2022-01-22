#> dt.array:api/experimental/equal_to
# Split the given array of key-values into those equal to the key and those not
# @params
#   storage call_stack: call.arg0
#       array of key-values
#   storage call_stack: call.arg1
#       value to check against
#   storage call_stack: call.arg2
#       optional int limit of positive results before returning
# @output
#   storage call_stack: this.return
#       array of two arrays, matches and non-matches

# set the accumulator to an inital value
# set the limit to the user passed in arg since this happens before a new frame push
# then add an additional base_case
data modify storage call_stack: call.accumulator set value [[],[]]
data modify storage call_stack: call.counter set from storage call_stack: call.arg2
function dt.array:api/func/reducer/push
execute if data storage call_stack: this.continue run function dt.array:api/func/reducer/base_case/counter_at_zero

execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg0 set from storage call_stack: this.head.key
execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg1 set from storage call_stack: this.arg1
execute if data storage call_stack: this.continue run function dt.array:api/helper/are_equal
execute if data storage call_stack: this.continue if data storage call_stack: call.return run data modify storage call_stack: this.are_equal set value true
execute if data storage call_stack: this.continue if data storage call_stack: this.are_equal run data modify storage call_stack: this.accumulator[0] append from storage call_stack: this.head
execute if data storage call_stack: this.continue unless data storage call_stack: this.are_equal run data modify storage call_stack: this.accumulator[1] append from storage call_stack: this.head

# subtract from local counter and set to arg var since that will be reused
execute if data storage call_stack: this.continue if data storage call_stack: this.are_equal if data storage call_stack: this.counter run data modify storage call_stack: call.arg0 set from storage call_stack: this.counter
execute if data storage call_stack: this.continue if data storage call_stack: this.are_equal if data storage call_stack: this.counter run function dt.array:api/helper/math/sub_one
execute if data storage call_stack: this.continue if data storage call_stack: this.are_equal if data storage call_stack: this.counter run data modify storage call_stack: this.arg2 set from storage call_stack: call.return

execute if data storage call_stack: this.continue run function dt.array:api/func/reducer/args/set
execute if data storage call_stack: this.continue run function dt.array:api/reduce/subarray/equal_to
function dt.array:api/func/pop