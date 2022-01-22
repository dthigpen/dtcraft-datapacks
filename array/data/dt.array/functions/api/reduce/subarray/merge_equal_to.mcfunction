#> dt.array:api/reduce/subarray/merge_equal_to
# Split the given array of key-values into those equal to the key and those not
# @params
#   storage call_stack: call.arg0
#       array of key-values
#   storage call_stack: call.arg1
#       value to check against
# @output
#   storage call_stack: this.return
#       array of two arrays, matches and non-matches
data modify storage call_stack: call.accumulator set value [[],[]]
function dt.array:api/func/reducer/push

execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg0 set from storage call_stack: this.head.key
execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg1 set from storage call_stack: this.arg1
execute if data storage call_stack: this.continue run function dt.array:api/helper/can_merge
execute if data storage call_stack: this.continue if data storage call_stack: call.return run data modify storage call_stack: this.accumulator[0] append from storage call_stack: this.head
execute if data storage call_stack: this.continue unless data storage call_stack: call.return run data modify storage call_stack: this.accumulator[1] append from storage call_stack: this.head

execute if data storage call_stack: this.continue run function dt.array:api/func/reducer/args/set
execute if data storage call_stack: this.continue run function dt.array:api/reduce/subarray/equal_to
function dt.array:api/func/pop