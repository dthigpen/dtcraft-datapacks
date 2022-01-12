#> dt.array:api/math/subtract
# Subtract each element of the given array of numbers by the given value
# @params
#   storage call_stack: call.arg0
#       array of numbers
#   storage call_stack: call.arg1
#       int number to subtract by
# @output
#   storage call_stack: this.return
#       array of numbers
function call_stack:push
data modify storage call_stack: this.numbers set from storage call_stack: this.arg0
data modify storage call_stack: this.subtract_by set from storage call_stack: this.arg1
data modify storage call_stack: this._values set value []
data modify storage call_stack: this._values set from storage call_stack: this.arg2

scoreboard players reset $int1 dt.tmp
scoreboard players reset $int2 dt.tmp
execute store result score $int1 dt.tmp run data get storage call_stack: this.numbers[0]
execute store result score $int2 dt.tmp run data get storage call_stack: this.subtract_by
scoreboard players operation $int1 dt.tmp -= $int2 dt.tmp
execute store result storage call_stack: this.difference int 1 run scoreboard players get $int1 dt.tmp
execute if data storage call_stack: this.numbers[0] run data modify storage call_stack: this._values append from storage call_stack: this.difference

data remove storage call_stack: this.numbers[0]
execute if data storage call_stack: this.numbers[0] run data modify storage call_stack: this.continue set value true
execute unless data storage call_stack: this.continue run data modify storage call_stack: this.return set from storage call_stack: this._values
execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg0 set from storage call_stack: this.numbers
execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg1 set from storage call_stack: this.subtract_by
execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg2 set from storage call_stack: this._values
execute if data storage call_stack: this.continue run function dt.array:api/math/subtract
execute if data storage call_stack: this.continue run data modify storage call_stack: this.return set from storage call_stack: call.return


function call_stack:pop