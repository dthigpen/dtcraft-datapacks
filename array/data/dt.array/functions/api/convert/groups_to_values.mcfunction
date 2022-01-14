#> dt.array:api/convert/groups_to_values
# Convert an array of key-value arrays to only values
# @params
#   storage call_stack: call.arg0
#       array of key-value arrays
# @output
#   storage call_stack: this.return
#       array of values
function call_stack:push
data modify storage call_stack: this.groups set from storage call_stack: this.arg0
execute unless data storage call_stack: this.temp_return run data modify storage call_stack: this.temp_return set value []
execute if data storage call_stack: this.groups[0] run data modify storage call_stack: this.continue set value true
execute unless data storage call_stack: this.continue run data modify storage call_stack: this.return set from storage call_stack: this.temp_return

# IF CONTINUE
execute if data storage call_stack: this.continue run data modify storage call_stack: this.group_values set value []
execute if data storage call_stack: this.continue run data modify storage call_stack: this.group_values append from storage call_stack: this.groups[0][].value
execute if data storage call_stack: this.continue run data modify storage call_stack: this.temp_return append from storage call_stack: this.group_values
execute if data storage call_stack: this.continue run data remove storage call_stack: this.groups[0]
execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg0 set from storage call_stack: this.groups
execute if data storage call_stack: this.continue run data modify storage call_stack: call.temp_return set from storage call_stack: this.temp_return
execute if data storage call_stack: this.continue run function dt.array:api/convert/groups_to_values
execute if data storage call_stack: this.continue run data modify storage call_stack: this.return set from storage call_stack: call.return
# data modify storage call_stack: this.return set value []
# data modify storage call_stack: this.return append from storage call_stack: this.arg0[].value
function call_stack:pop