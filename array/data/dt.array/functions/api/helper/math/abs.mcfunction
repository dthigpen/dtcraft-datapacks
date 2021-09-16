#> dt.array:api/helper/math/abs
# Get the absolute value of a number
# @params
#   storage call_stack: call.arg0
#       int number
# @output
#   storage call_stack: call.result
#       int maximum number
function call_stack:push
scoreboard players reset $number1 dt.tmp
execute store result score $number1 dt.tmp run data get storage call_stack: this.arg0

scoreboard players set #neg_one dt.tmp -1
execute if score $number1 dt.tmp matches ..-1 run scoreboard players operation $number1 dt.tmp *= #neg_one dt.tmp
execute store result storage call_stack: this.result int 1 run scoreboard players get $number1 dt.tmp

function call_stack:pop