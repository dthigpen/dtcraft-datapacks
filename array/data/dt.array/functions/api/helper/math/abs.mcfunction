#> dt.array:api/helper/math/abs
# Get the absolute value of a number
# @params
#   storage call_stack: call.arg0
#       int number
# @output
#   storage call_stack: call.return
#       int maximum number
function call_stack:push
scoreboard players reset $number1 dt.tmp
execute store result score $number1 dt.tmp run data get storage call_stack: this.arg0

scoreboard players set #neg_one dt.tmp -1
execute if data storage call_stack: this.arg0 if score $number1 dt.tmp matches ..-1 run scoreboard players operation $number1 dt.tmp *= #neg_one dt.tmp
execute if data storage call_stack: this.arg0 store result storage call_stack: this.return int 1 run scoreboard players get $number1 dt.tmp

function call_stack:pop