#> dt.array:api/map/math/subtract
# subtract the given value to each value in the array
# @params
#   storage call_stack: call.arg0
#       array of numbers
#   storage call_stack: call.arg1
#       int amount to subtract
# @output
#   storage call_stack: this.return
#       array of numbers
function dt.array:api/func/mapper/push
execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg0 set from storage call_stack: this.head
execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg1 set from storage call_stack: this.arg1
execute if data storage call_stack: this.continue run function dt.array:api/helper/math/subtract
execute if data storage call_stack: this.continue run data modify storage call_stack: this.head set from storage call_stack: call.return
execute if data storage call_stack: this.continue run function dt.array:api/func/mapper/args/set
execute if data storage call_stack: this.continue run function dt.array:api/map/math/subtract
function dt.array:api/func/pop