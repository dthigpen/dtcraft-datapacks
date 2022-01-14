#> dt.array:api/split/equal
# Split the given array of key-values into those equal to the key and those not
# @params
#   storage call_stack: call.arg0
#       array of key-values
#   storage call_stack: call.arg1
#       value to check against
# @output
#   storage call_stack: this.return
#       array of two arrays, matches and non-matches
function call_stack:push
data modify storage call_stack: this.key_values set from storage call_stack: this.arg0
data modify storage call_stack: this.value set from storage call_stack: this.arg1
execute unless data storage call_stack: this.temp_return run data modify storage call_stack: this.temp_return set value [[],[]]

execute if data storage call_stack: this.key_values[0] run data modify storage call_stack: this.continue set value true
execute unless data storage call_stack: this.continue run data modify storage call_stack: this.return set from storage call_stack: this.temp_return

execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg0 set from storage call_stack: this.key_values[0].key
execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg1 set from storage call_stack: this.value
execute if data storage call_stack: this.continue run function dt.array:api/helper/are_equal
execute if data storage call_stack: this.continue if data storage call_stack: call.return run data modify storage call_stack: this.temp_return[0] append from storage call_stack: this.key_values[0]
execute if data storage call_stack: this.continue unless data storage call_stack: call.return run data modify storage call_stack: this.temp_return[1] append from storage call_stack: this.key_values[0]
execute if data storage call_stack: this.continue run data remove storage call_stack: this.key_values[0]
execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg0 set from storage call_stack: this.key_values
execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg1 set from storage call_stack: this.value
execute if data storage call_stack: this.continue run data modify storage call_stack: call.temp_return set from storage call_stack: this.temp_return
execute if data storage call_stack: this.continue run function dt.array:api/split/equal
execute if data storage call_stack: this.continue run data modify storage call_stack: this.return set from storage call_stack: call.return

function call_stack:pop