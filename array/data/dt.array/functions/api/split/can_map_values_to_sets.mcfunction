#> dt.array:api/split/can_map_values_to_sets
# Returns true if the given values can be mapped to the given sets
# @params
# @output
function call_stack:push
data modify storage call_stack: this.array set from storage call_stack: this.arg0
data modify storage call_stack: this.values set from storage call_stack: this.arg1
data modify storage call_stack: this.sets set from storage call_stack: this.arg2

# base case
execute if data storage call_stack: this.array[0] if data storage call_stack: this.values[0] if data storage call_stack: this.sets[0] run data modify storage call_stack: this.continue set value true
execute unless data storage call_stack: this.array[0] unless data storage call_stack: this.values[0] unless data storage call_stack: this.sets[0] run data modify storage call_stack: this.return set value true

# check if first value is in set and append it to return if it is
execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg0 set from storage call_stack: this.values[0]
execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg1 set from storage call_stack: this.sets
execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg2 set value true
execute if data storage call_stack: this.continue run function dt.array:api/split/matching_sets
execute if data storage call_stack: this.continue run data modify storage call_stack: this.matching_sets set from storage call_stack: call.return[0]
execute if data storage call_stack: this.continue run data modify storage call_stack: this.non_matching_sets set from storage call_stack: call.return[1]
execute if data storage call_stack: this.continue if data storage call_stack: this.matching_sets[0] run data modify storage call_stack: this.found_match set value true

# prep for next round: if found set the sets to the remaining sets after the match
execute if data storage call_stack: this.continue if data storage call_stack: this.found_match run data modify storage call_stack: this.sets set from storage call_stack: this.non_matching_sets
execute if data storage call_stack: this.continue if data storage call_stack: this.found_match run data remove storage call_stack: this.array[0]
execute if data storage call_stack: this.continue if data storage call_stack: this.found_match run data remove storage call_stack: this.values[0]

execute if data storage call_stack: this.continue if data storage call_stack: this.found_match run data modify storage call_stack: call.arg0 set from storage call_stack: this.array
execute if data storage call_stack: this.continue if data storage call_stack: this.found_match run data modify storage call_stack: call.arg1 set from storage call_stack: this.values
execute if data storage call_stack: this.continue if data storage call_stack: this.found_match run data modify storage call_stack: call.arg2 set from storage call_stack: this.sets
execute if data storage call_stack: this.continue if data storage call_stack: this.found_match run function dt.array:api/split/can_map_values_to_sets
execute if data storage call_stack: this.continue if data storage call_stack: this.found_match run data modify storage call_stack: this.return set from storage call_stack: call.return

function call_stack:pop