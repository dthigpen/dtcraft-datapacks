#> dt.array:api/map/key_value/from_values
# convert the given array of values into key value pair objects with the keys being the same as the values
# @params
#   storage call_stack: call.arg0
#       array
# @output
#   storage call_stack: call.return
#       array of objects [{key:1,value:a}..{key:n,value:z}]
function call_stack:push
data modify storage call_stack: this.values set from storage call_stack: this.arg0
execute unless data storage call_stack: this.temp_return run data modify storage call_stack: this.temp_return set value []

execute if data storage call_stack: this.values[0] run data modify storage call_stack: this.continue set value true
execute unless data storage call_stack: this.continue run data modify storage call_stack: this.return set from storage call_stack: this.temp_return

# IF CONTINUE
execute if data storage call_stack: this.continue run data modify storage call_stack: this.temp_return append value {}
execute if data storage call_stack: this.continue run data modify storage call_stack: this.temp_return[-1].key set from storage call_stack: this.values[0]
execute if data storage call_stack: this.continue run data modify storage call_stack: this.temp_return[-1].value set from storage call_stack: this.values[0]
execute if data storage call_stack: this.continue run data remove storage call_stack: this.values[0]
execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg0 set from storage call_stack: this.values
execute if data storage call_stack: this.continue run data modify storage call_stack: call.temp_return set from storage call_stack: this.temp_return
execute if data storage call_stack: this.continue run function dt.array:api/map/key_value/from_values
execute if data storage call_stack: this.continue run data modify storage call_stack: this.return set from storage call_stack: call.return

function call_stack:pop