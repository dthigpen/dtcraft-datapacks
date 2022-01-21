#> dt.array:api/helper/math/sub_one
# Subtract one from the given number
# @params
#   storage call_stack: call.arg0
#       number
# @output
#   storage call_stack: this.return
#       number
function call_stack:push
scoreboard players reset #int1 dt.tmp
execute store result score #int1 dt.tmp run data get storage call_stack: this.arg0
execute run scoreboard players remove #int1 dt.tmp 1
execute if data storage call_stack: this.arg0 store result storage call_stack: this.return int 1 run scoreboard players get #int1 dt.tmp
function call_stack:pop