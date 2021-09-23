#> dt.array:api/n_array_of
# create an array of length n consisting of the given repeated value
# @params
#   storage call_stack: call.arg0
#       length n
#   storage call_stack: call.arg2
#       element value
# @output
#   storage call_stack: call.return
#       list of values
function call_stack:push

execute store result score size1 dt.tmp run data get storage call_stack: this.arg0
data modify storage call_stack: this.value set from storage call_stack: this.arg1

# data modify storage call_stack: this.valid set value false
execute if score size1 dt.tmp matches 1.. run data modify storage call_stack: this.continue set value true
execute store result storage call_stack: this.length int 1 run scoreboard players get size1 dt.tmp

data modify storage call_stack: this.return set value []
execute if data storage call_stack: this.continue store result storage call_stack: call.arg0 int 1 run scoreboard players get size1 dt.tmp
execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg1 set from storage call_stack: this.value
execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg2 set value []
execute if data storage call_stack: this.continue run function dt.array:internal/n_array_of_loop
execute if data storage call_stack: this.continue run data modify storage call_stack: this.return set from storage call_stack: call.return

function call_stack:pop