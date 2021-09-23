#> dt.array:api/trim_to_size
# trim an array to a set size
# @params
#   storage call_stack: call.arg0
#       array
#   storage call_stack: call.arg1
#       size of the array to trim to.
# @output
#   storage call_stack: call.return
#       array
function call_stack:push
data modify storage call_stack: this.array set from storage call_stack: this.arg0
execute store result score $size1 dt.tmp run data get storage call_stack: this.arg1

execute store result score $size2 dt.tmp run data get storage call_stack: this.array
scoreboard players operation $size2 dt.tmp -= $size1 dt.tmp

execute if score $size2 dt.tmp matches 1.. run data modify storage call_stack: this.do_trim set value true

execute unless data storage call_stack: this.do_trim run data modify storage call_stack: this.return set from storage call_stack: this.array
execute if data storage call_stack: this.do_trim run data modify storage call_stack: call.arg0 set from storage call_stack: this.array
execute if data storage call_stack: this.do_trim store result storage call_stack: call.arg1 int 1 run scoreboard players get $size2 dt.tmp
execute if data storage call_stack: this.do_trim run function dt.array:api/remove_n
execute if data storage call_stack: this.do_trim run data modify storage call_stack: this.return set from storage call_stack: call.return


function call_stack:pop