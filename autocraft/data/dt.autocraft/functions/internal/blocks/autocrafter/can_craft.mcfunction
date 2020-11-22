function call_stack:pop
data modify storage call_stack: this.items set from storage call_stack: this.arg0

execute store result score size1 dt.tmp run data get storage call_stack: this.items
data modify storage call_stack: call.arg0 set from storage call_stack: this.items
data modify storage call_stack: call.arg1 set value {Count:1b}
function dt.crafting_util:internal/array/split_by_key
execute store result score size2 dt.tmp run data get storage call_stack: call.result[0]

data modify storage call_stack: this.result set value false
execute if score size1 dt.tmp matches 1.. if score size1 dt.tmp = size2 dt.tmp run data modify storage call_stack: this.result set value true


function call_stack:pop