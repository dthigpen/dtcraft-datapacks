#> dt.array:api/difference
# the difference between two arrays. Elements common to both lists will not be included in the output. Elements only in the first will be included in the output.
# @params
#   storage call_stack: call.arg0
#       array
#   storage call_stack: call.arg1
#       array
# @output
#   storage call_stack: call.return
#       array
function call_stack:push

data modify storage call_stack: this.list1 set from storage call_stack: this.arg0
data modify storage call_stack: this.list2 set from storage call_stack: this.arg1

data modify storage call_stack: this.return set from storage call_stack: this.list1
execute if data storage call_stack: this.list1[0] if data storage call_stack: this.list2[0] run data modify storage call_stack: call.arg0 set from storage call_stack: this.list1
execute if data storage call_stack: this.list1[0] if data storage call_stack: this.list2[0] run data modify storage call_stack: call.arg1 set from storage call_stack: this.list2
execute if data storage call_stack: this.list1[0] if data storage call_stack: this.list2[0] run data modify storage call_stack: call.arg2 set value []
execute if data storage call_stack: this.list1[0] if data storage call_stack: this.list2[0] run function dt.array:internal/difference_loop
execute if data storage call_stack: this.list1[0] if data storage call_stack: this.list2[0] run data modify storage call_stack: this.return set from storage call_stack: call.return
function call_stack:pop