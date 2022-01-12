#> dt.array:api/helper/are_equal
# Return true if the given values are equal
# @params
#   storage call_stack: call.arg0
#       value
#   storage call_stack: call.arg1
#       value
# @output
#   storage call_stack: this.return
#       true or not set
function call_stack:push
scoreboard players reset #changed dt.tmp
execute store success score #changed dt.tmp run data modify storage call_stack: this.arg0 set from storage call_stack: this.arg1
execute if score #changed dt.tmp matches 0 run data modify storage call_stack: this.return set value true
function call_stack:pop