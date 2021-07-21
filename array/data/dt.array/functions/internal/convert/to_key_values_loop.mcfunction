function call_stack:push
data modify storage call_stack: this.array_values set from storage call_stack: this.arg0
data modify storage call_stack: this.key_value_objects set from storage call_stack: this.arg1

# case 1: empty array, return key_value_objects
# case 2: non-empty array, append key_value_objects with array[0] object, pop

# set case identifier
execute unless data storage call_stack: this.array_values[0] run data modify storage call_stack: this.base_case set value true

# case 1
execute if data storage call_stack: this.base_case run data modify storage call_stack: this.result set from storage call_stack: this.key_value_objects

# case 2
execute unless data storage call_stack: this.base_case run data modify storage call_stack: this.key_value_objects append value {}
execute unless data storage call_stack: this.base_case store result storage call_stack: this.key_value_objects[-1].key int 1 run data get storage call_stack: this.key_value_objects
execute unless data storage call_stack: this.base_case run data modify storage call_stack: this.key_value_objects[-1].value set from storage call_stack: this.array_values[0]
execute unless data storage call_stack: this.base_case run data remove storage call_stack: this.array_values[0]
execute unless data storage call_stack: this.base_case run data modify storage call_stack: call.arg0 set from storage call_stack: this.array_values
execute unless data storage call_stack: this.base_case run data modify storage call_stack: call.arg1 set from storage call_stack: this.key_value_objects
execute unless data storage call_stack: this.base_case run function dt.array:internal/convert/to_key_values_loop
execute unless data storage call_stack: this.base_case run data modify storage call_stack: this.result set from storage call_stack: call.result



function call_stack:pop