#> dt.array:api/deprecated/math/cumulative_subtract_min_0
# Given an array of integers, subtract the given total across all numbers.
# Example: arg0 = [10,2,5], arg1 = 13, return = [0,0,4]
# @params
#   storage call_stack: call.arg0
#       array of integers
#   storage call_stack: call.arg1
#       integer total to subtract
# @output
#   storage call_stack: call.arg0
#       array of integers
function call_stack:push
data modify storage call_stack: this.numbers set from storage call_stack: this.arg0
data modify storage call_stack: this.total set from storage call_stack: this.arg1
data modify storage call_stack: this._values set value []
data modify storage call_stack: this._values set from storage call_stack: this.arg2

#> max(0, numbers[0] - total)
scoreboard players reset $int1 dt.tmp
scoreboard players reset $int2 dt.tmp
execute store result score $int1 dt.tmp run data get storage call_stack: this.numbers[0]
execute store result score $int2 dt.tmp run data get storage call_stack: this.total
scoreboard players operation $int1 dt.tmp -= $int2 dt.tmp
execute store result storage call_stack: this.difference int 1 run scoreboard players get $int1 dt.tmp

execute if score $int1 dt.tmp matches ..-1 run data modify storage call_stack: this.has_remainder set value true
execute unless data storage call_stack: this.has_remainder run data modify storage call_stack: this.total set value 0
execute if data storage call_stack: this.has_remainder run data modify storage call_stack: call.arg0 set from storage call_stack: this.difference
execute if data storage call_stack: this.has_remainder run function dt.array:api/helper/math/abs
execute if data storage call_stack: this.has_remainder run data modify storage call_stack: this.total set from storage call_stack: call.return

data modify storage call_stack: call.arg0 set value 0
data modify storage call_stack: call.arg1 set from storage call_stack: this.difference
function dt.array:api/helper/math/max
data modify storage call_stack: this.max set from storage call_stack: call.return

data modify storage call_stack: this._values append from storage call_stack: this.max

data remove storage call_stack: this.numbers[0]
execute if data storage call_stack: this.numbers[0] run data modify storage call_stack: this.continue set value true
execute unless data storage call_stack: this.continue run data modify storage call_stack: this.return set value {values:[], remainder:0}
execute unless data storage call_stack: this.continue run data modify storage call_stack: this.return.values set from storage call_stack: this._values
execute unless data storage call_stack: this.continue run data modify storage call_stack: this.return.remainder set from storage call_stack: this.total
execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg0 set from storage call_stack: this.numbers
execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg1 set from storage call_stack: this.total
execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg2 set from storage call_stack: this._values
execute if data storage call_stack: this.continue run function dt.array:api/deprecated/math/cumulative_subtract_min_0
execute if data storage call_stack: this.continue run data modify storage call_stack: this.return set from storage call_stack: call.return


function call_stack:pop