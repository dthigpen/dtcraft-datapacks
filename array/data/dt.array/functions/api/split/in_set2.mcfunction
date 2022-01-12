#> dt.array:api/split/in_set2
# TODO: clean up the split/set APIs
# @params
# @output
function call_stack:push
data modify storage call_stack: this.values set from storage call_stack: this.arg0
data modify storage call_stack: this.set set from storage call_stack: this.arg1
execute unless data storage call_stack: this._temp_return run data modify storage call_stack: this._temp_return set value [[],[]]
# base case
execute if data storage call_stack: this.array[0] if data storage call_stack: this.values[0] run data modify storage call_stack: this.continue set value true
execute unless data storage call_stack: this.continue run data modify storage call_stack: this.return set from storage call_stack: this._temp_return

# check if first value is in set and append it to return if it is
execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg0 set from storage call_stack: this.set
execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg1 set from storage call_stack: this.values[0]
execute if data storage call_stack: this.continue run function dt.array:api/helper/is_in_set
# if in set append to matches array at index 0 or non_matches at index 1
execute if data storage call_stack: this.continue if data storage call_stack: {call:{return:true}} run data modify storage call_stack: this._temp_return[0] append from storage call_stack: this.array[0]
execute if data storage call_stack: this.continue unless data storage call_stack: {call:{return:true}} run data modify storage call_stack: this._temp_return[1] append from storage call_stack: this.array[0]

# remove processed items
execute if data storage call_stack: this.continue run data remove storage call_stack: this.array[0]
execute if data storage call_stack: this.continue run data remove storage call_stack: this.values[0]

execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg0 set from storage call_stack: this.array
execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg1 set from storage call_stack: this.values
execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg2 set from storage call_stack: this.set
execute if data storage call_stack: this.continue run data modify storage call_stack: call._temp_return set from storage call_stack: this._temp_return
execute if data storage call_stack: this.continue run function dt.array:api/split/in_set
execute if data storage call_stack: this.continue run data modify storage call_stack: this.return set from storage call_stack: call.return

function call_stack:pop