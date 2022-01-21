#> dt.array:api/helper/math/max
# Get the maximum number between two numbers
# @params
#   storage call_stack: call.arg0
#       int first number
# @params
#   storage call_stack: call.arg1
#       int second number
# @output
#   storage call_stack: call.return
#       int maximum number
function call_stack:push
scoreboard players reset $int1 dt.tmp
scoreboard players reset $int2 dt.tmp
execute store result score $int1 dt.tmp run data get storage call_stack: this.arg0
execute store result score $int2 dt.tmp run data get storage call_stack: this.arg1

# note: not using the following method so that it works with differnt types without changing result type
# scoreboard players operation $int1 dt.tmp > $int2 dt.tmp
# execute store result storage call_stack: this.return int 1 run scoreboard players get $int1 dt.tmp

execute if data storage call_stack: this.arg0 if data storage call_stack: this.arg1 if score $int1 dt.tmp >= $int2 dt.tmp run data modify storage call_stack: this.return set from storage call_stack: this.arg0
execute if data storage call_stack: this.arg0 if data storage call_stack: this.arg1 if score $int2 dt.tmp > $int1 dt.tmp run data modify storage call_stack: this.return set from storage call_stack: this.arg1


function call_stack:pop