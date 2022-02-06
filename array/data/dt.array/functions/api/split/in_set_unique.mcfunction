#> dt.array:api/split/in_set_unique
# Split the given array into two arrays based on whether they are contained in the given set
# @params
#   storage call_stack: call.arg0
#       array of values to split into arrays
#   storage call_stack: call.arg1
#       array of values used to perform the uniqueness check on
#   storage call_stack: call.arg1
#       array of values to compare each value in the main array against
# @output
#   storage call_stack: this.return
#       array of two arrays of which the first element is the array of values that are in the set array and the second element is the complement
function call_stack:push
data modify storage call_stack: this.array set from storage call_stack: this.arg0
data modify storage call_stack: this.values set from storage call_stack: this.arg1
data modify storage call_stack: this.set set from storage call_stack: this.arg2
execute unless data storage call_stack: this._temp_return run data modify storage call_stack: this._temp_return set value [[],[]]

# base case
execute if data storage call_stack: this.array[0] if data storage call_stack: this.values[0] run data modify storage call_stack: this.continue set value true
execute unless data storage call_stack: this.continue run data modify storage call_stack: this.return set from storage call_stack: this._temp_return

# check if first value is in set and append it to return if it is
execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg0 set from storage call_stack: this.set
execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg1 set value []
execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg1 append from storage call_stack: this.values[0]
execute if data storage call_stack: this.continue run function dt.array:api/reduce/set/value_difference
execute if data storage call_stack: this.continue run data modify storage call_stack: this.set_diff set from storage call_stack: call.return

execute if data storage call_stack: this.continue run scoreboard players reset $size1 dt.tmp
execute if data storage call_stack: this.continue run scoreboard players reset $size2 dt.tmp
execute if data storage call_stack: this.continue store result score $size1 dt.tmp run data get storage call_stack: this.set
execute if data storage call_stack: this.continue store result score $size2 dt.tmp run data get storage call_stack: this.set_diff

execute if data storage call_stack: this.continue if score $size1 dt.tmp = $size2 dt.tmp run data modify storage call_stack: this._temp_return[1] append from storage call_stack: this.array[0]
execute if data storage call_stack: this.continue unless score $size1 dt.tmp = $size2 dt.tmp run data modify storage call_stack: this._temp_return[0] append from storage call_stack: this.array[0]
execute if data storage call_stack: this.continue unless score $size1 dt.tmp = $size2 dt.tmp run data modify storage call_stack: this.set set from storage call_stack: this.set_diff


# remove processed items
execute if data storage call_stack: this.continue run data remove storage call_stack: this.array[0]
execute if data storage call_stack: this.continue run data remove storage call_stack: this.values[0]

execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg0 set from storage call_stack: this.array
execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg1 set from storage call_stack: this.values
execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg2 set from storage call_stack: this.set
execute if data storage call_stack: this.continue run data modify storage call_stack: call._temp_return set from storage call_stack: this._temp_return
execute if data storage call_stack: this.continue run function dt.array:api/split/in_set_unique
execute if data storage call_stack: this.continue run data modify storage call_stack: this.return set from storage call_stack: call.return

function call_stack:pop