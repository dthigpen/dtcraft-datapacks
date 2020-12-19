function call_stack:push

data modify storage call_stack: this.list set from storage call_stack: this.arg0
data modify storage call_stack: this.index set from storage call_stack: this.arg1

execute store result score #index dt.tmp run data get storage call_stack: this.index
execute store result score #length dt.tmp run data get storage call_stack: this.list

# TODO
# store as score, do bound checking
# call loop function
data modify storage call_stack: this.is_valid set value false

execute if data storage call_stack: this.list[0] if score #index dt.tmp matches 0.. if score #index dt.tmp < #length dt.tmp run data modify storage call_stack: this.is_valid set value true
execute if data storage call_stack: {this:{is_valid:false}} run data modify storage call_stack: this.result set value {before: [], at:{}, after:[]} 
execute if data storage call_stack: {this:{is_valid:false}} run data modify storage call_stack: this.result.after set from storage call_stack: this.list

execute if data storage call_stack: {this:{is_valid:true}} run data modify storage call_stack: call.arg0 set from storage call_stack: this.list
execute if data storage call_stack: {this:{is_valid:true}} run data modify storage call_stack: call.arg1 set from storage call_stack: this.index
execute if data storage call_stack: {this:{is_valid:true}} run data modify storage call_stack: call.arg2 set value []
execute if data storage call_stack: {this:{is_valid:true}} run function dt.array_util:internal/split_at_index_loop
execute if data storage call_stack: {this:{is_valid:true}} run data modify storage call_stack: this.result set from storage call_stack: call.result
function call_stack:pop