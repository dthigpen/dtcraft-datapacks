#> dt.array:api/helper/math/is_greater_than_or_equal
# Return true if the first given number is greater than or equal to the second given number
# @params
#   storage call_stack: call.arg0
#       number
#   storage call_stack: call.arg0
#       number
# @output
#   storage call_stack: this.return
#       true or not set
function call_stack:push
scoreboard players reset $int1 dt.tmp
scoreboard players reset $int2 dt.tmp
execute if data storage call_stack: this.arg0 if data storage call_stack: this.arg1 store result score $int1 dt.tmp run data get storage call_stack: this.arg0
execute if data storage call_stack: this.arg0 if data storage call_stack: this.arg1 store result score $int2 dt.tmp run data get storage call_stack: this.arg1
execute if data storage call_stack: this.arg0 if data storage call_stack: this.arg1 if score $int1 dt.tmp >= $int2 dt.tmp run data modify storage call_stack: this.return set value true
function call_stack:pop