#> dt.array:api/split/matching_sets
# TODO: clean up the split/set APIs
# @params
# @output
function call_stack:push
data modify storage call_stack: this.value set from storage call_stack: this.arg0
data modify storage call_stack: this.sets set from storage call_stack: this.arg1
data modify storage call_stack: this.limit_one set from storage call_stack: this.arg2

execute unless data storage call_stack: this._temp_return run data modify storage call_stack: this._temp_return set value [[],[]]
# base case 
execute if data storage call_stack: this.sets[0] run data modify storage call_stack: this.continue set value true
execute unless data storage call_stack: this.continue run data modify storage call_stack: this.return set from storage call_stack: this._temp_return

# check if in set
execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg0 set from storage call_stack: this.sets[0]
execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg1 set from storage call_stack: this.value
execute if data storage call_stack: this.continue run function dt.array:api/helper/is_in_set
execute if data storage call_stack: this.continue if data storage call_stack: call.return run data modify storage call_stack: this.found_in_set set value true

## add set to either the matching sets or the non-matching sets
execute if data storage call_stack: this.continue if data storage call_stack: this.found_in_set run data modify storage call_stack: this._temp_return[0] append from storage call_stack: this.sets[0]
### if limit_one add remaining to non-matching sets
execute if data storage call_stack: this.continue unless data storage call_stack: this.found_in_set run data modify storage call_stack: this._temp_return[1] append from storage call_stack: this.sets[0]
execute if data storage call_stack: this.continue run data remove storage call_stack: this.sets[0]
execute if data storage call_stack: this.continue if data storage call_stack: this.found_in_set if data storage call_stack: this.limit_one run data modify storage call_stack: this._temp_return[1] append from storage call_stack: this.sets[]
execute if data storage call_stack: this.continue if data storage call_stack: this.found_in_set if data storage call_stack: this.limit_one run data modify storage call_stack: this.sets set value []

execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg0 set from storage call_stack: this.value
execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg1 set from storage call_stack: this.sets
execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg2 set from storage call_stack: this.limit_one
execute if data storage call_stack: this.continue run data modify storage call_stack: call._temp_return set from storage call_stack: this._temp_return
execute if data storage call_stack: this.continue run function dt.array:api/split/matching_sets
execute if data storage call_stack: this.continue run data modify storage call_stack: this.return set from storage call_stack: call.return


function call_stack:pop