#> dt.array:api/helper/math/add_one
# Add one to the given number
# @input
#   storage call_stack: call.arg0
#       number
# @output
#   storage call_stack: this.return
#       number
function call_stack:push
scoreboard players reset #int1 dt.tmp
execute store result score #int1 dt.tmp run data get storage call_stack: this.arg0
scoreboard players add #int1 dt.tmp 1
execute if data storage call_stack: this.arg0 store result storage call_stack: this.return int 1 run scoreboard players get #int1 dt.tmp
function call_stack:pop