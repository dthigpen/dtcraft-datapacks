#> dt.array:api/helper/math/add
# Add one to the given number
# @params
#   storage call_stack: call.arg0
#       number
#   storage call_stack: call.arg1
#       number
# @output
#   storage call_stack: this.return
#       number
function call_stack:push
scoreboard players reset #int1 dt.tmp
execute store result score #int1 dt.tmp run data get storage call_stack: this.arg0
scoreboard players reset #int2 dt.tmp
execute store result score #int2 dt.tmp run data get storage call_stack: this.arg1
scoreboard players operation #int1 dt.tmp += #int2 dt.tmp
execute if data storage call_stack: this.arg0 if data storage call_stack: this.arg1 store result storage call_stack: this.return int 1 run scoreboard players get #int1 dt.tmp
function call_stack:pop