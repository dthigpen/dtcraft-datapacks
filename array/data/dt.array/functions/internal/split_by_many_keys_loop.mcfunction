#> dt.array:api/split_by_key
# splits the given list into two lists, first for elements containing the key, and the second its complement
# @params
#   storage call_stack: call.arg0
#       array
#   storage call_stack: call.arg1
#       key to match elements on
# @output
#   storage call_stack: call.return
#       array of two arrays. [[with-key],[complement]]
function call_stack:push

data modify storage call_stack: this.values set from storage call_stack: this.arg0
data modify storage call_stack: this.keys set from storage call_stack: this.arg1
data modify storage call_stack: this.temp_result set from storage call_stack: this.arg2

execute if data storage call_stack: this.keys[0] run data modify storage call_stack: this.continue set value true
execute unless data storage call_stack: this.keys[0] run data modify storage call_stack: this.temp_result[1] set from storage call_stack: this.values
execute unless data storage call_stack: this.keys[0] run data modify storage call_stack: this.return set from storage call_stack: this.temp_result

execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg0 set from storage call_stack: this.values
execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg1 set from storage call_stack: this.keys[0]
execute if data storage call_stack: this.continue run function dt.array:api/split_by_key
execute if data storage call_stack: this.continue run data modify storage call_stack: this.temp_result[0] append from storage call_stack: call.return[0][]
execute if data storage call_stack: this.continue run data modify storage call_stack: this.values set from storage call_stack: call.return[1]

execute if data storage call_stack: this.continue run data remove storage call_stack: this.keys[0]

execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg0 set from storage call_stack: this.values
execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg1 set from storage call_stack: this.keys
execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg2 set from storage call_stack: this.temp_result
execute if data storage call_stack: this.continue run function dt.array:internal/split_by_many_keys_loop
execute if data storage call_stack: this.continue run data modify storage call_stack: this.return set from storage call_stack: call.return

function call_stack:pop