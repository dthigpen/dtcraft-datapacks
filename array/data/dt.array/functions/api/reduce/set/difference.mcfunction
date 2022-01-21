#> dt.array:api/reduce/set/difference
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
function dt.array:api/funct/reducer/base/push
execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg0 set from storage call_stack: this.head
execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg1 set from storage call_stack: this.arg1
execute if data storage call_stack: this.continue run function dt.array:api/helper/is_in_set
execute if data storage call_stack: this.continue unless data storage call_stack: call.return run data modify storage call_stack: this.accumulator append from storage call_stack: this.head

execute if data storage call_stack: this.continue run function dt.array:api/funct/reducer/args/set
execute if data storage call_stack: this.continue run function dt.array:api/reduce/set/difference
function dt.array:api/funct/pop