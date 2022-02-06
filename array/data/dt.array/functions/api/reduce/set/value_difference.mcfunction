#> dt.array:api/reduce/set/value_difference
# the difference between two arrays. Elements common to both lists will not be included in the output. Elements only in the first will be included in the output.
# @params
#   storage call_stack: call.arg0
#       array
#   storage call_stack: call.arg1
#       array
# @output
#   storage call_stack: call.return
#       array
data modify storage call_stack: call.accumulator set value []
function dt.array:api/func/reducer/push
execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg0 set from storage call_stack: this.arg1
execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg1 set from storage call_stack: this.head
execute if data storage call_stack: this.continue run function dt.array:api/helper/is_in_set
execute if data storage call_stack: this.continue unless data storage call_stack: call.return run data modify storage call_stack: this.accumulator append from storage call_stack: this.head

execute if data storage call_stack: this.continue run function dt.array:api/func/reducer/args/set
execute if data storage call_stack: this.continue run function dt.array:api/reduce/set/value_difference
function dt.array:api/func/pop