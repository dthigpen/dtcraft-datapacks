#> dt.array:api/group_by
# Group an array of key-values by their keys
# @params
#   storage call_stack: call.arg0
#       array of key value pairs
# @output
#   storage call_stack: this.return
#       array of key-value arrays representing groups of equal values
function call_stack:push
data modify storage call_stack: this.key_values set from storage call_stack: this.arg0
execute unless data storage call_stack: this.temp_return run data modify storage call_stack: this.temp_return set value []

execute if data storage call_stack: this.key_values[0] run data modify storage call_stack: this.continue set value true
execute unless data storage call_stack: this.continue run data modify storage call_stack: this.return set from storage call_stack: this.temp_return

# get the first key_value in the group and check if any other 
execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg0 set from storage call_stack: this.key_values
execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg1 set from storage call_stack: this.key_values[0].key
execute if data storage call_stack: this.continue run function dt.array:api/split/equal
execute if data storage call_stack: this.continue run data modify storage call_stack: this.temp_return append from storage call_stack: call.return[0]
execute if data storage call_stack: this.continue run data modify storage call_stack: this.key_values set from storage call_stack: call.return[1]

execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg0 set from storage call_stack: this.key_values
execute if data storage call_stack: this.continue run data modify storage call_stack: call.temp_return set from storage call_stack: this.temp_return
execute if data storage call_stack: this.continue run function dt.array:api/group_by
execute if data storage call_stack: this.continue run data modify storage call_stack: this.return set from storage call_stack: call.return

function call_stack:pop