#> dt.array:api/map/type/to_int
# Convert the given array of numbers into an array of ints
# @params
#   storage call_stack: call.arg0
#       array of numbers
# @output
#   storage call_stack: this.return
#       array of ints
function dt.array:api/func/mapper/push
execute if data storage call_stack: this.continue store result storage call_stack: this.head int 1 run data get storage call_stack: this.head
execute if data storage call_stack: this.continue run function dt.array:api/func/mapper/args/set
execute if data storage call_stack: this.continue run function dt.array:api/map/type/to_int
function dt.array:api/func/pop