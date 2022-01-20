#> dt.array:api/map/type/to_bytes
# Convert the given array of numbers into an array of bytes
# @params
#   storage call_stack: call.arg0
#       array of numbers
# @output
#   storage call_stack: this.return
#       array of bytes
function dt.array:api/funct/mapper/push
execute if data storage call_stack: this.continue store result storage call_stack: this.head byte 1 run data get storage call_stack: this.head
execute if data storage call_stack: this.continue run function dt.array:api/funct/mapper/args/set
execute if data storage call_stack: this.continue run function dt.array:api/map/type/to_bytes
function dt.array:api/funct/pop