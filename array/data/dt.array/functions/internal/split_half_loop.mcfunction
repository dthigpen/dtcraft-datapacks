function call_stack:push
data modify storage call_stack: this.remaining set from storage call_stack: this.arg0
data modify storage call_stack: this.first_half set from storage call_stack: this.arg1

# pop first in remaining onto first_half
data modify storage call_stack: this.first_half append from storage call_stack: this.remaining[0]
data remove storage call_stack: this.remaining[0]

# if the difference in size is greater than one then continue splitting, else return
execute store result score $size1 dt.tmp run data get storage call_stack: this.first_half
execute store result score $size2 dt.tmp run data get storage call_stack: this.remaining
scoreboard players operation $size2 dt.tmp -= $size1 dt.tmp

data modify storage call_stack: this.is_split set value true
execute if score $size2 dt.tmp matches 2.. run data modify storage call_stack: this.is_split set value false
execute if data storage call_stack: {this:{is_split:true}} run data modify storage call_stack: this.return set value []
execute if data storage call_stack: {this:{is_split:true}} run data modify storage call_stack: this.return append from storage call_stack: this.first_half
execute if data storage call_stack: {this:{is_split:true}} run data modify storage call_stack: this.return append from storage call_stack: this.remaining

execute if data storage call_stack: {this:{is_split:false}} run data modify storage call_stack: call.arg0 set from storage call_stack: this.remaining
execute if data storage call_stack: {this:{is_split:false}} run data modify storage call_stack: call.arg1 set from storage call_stack: this.first_half
execute if data storage call_stack: {this:{is_split:false}} run function dt.array:internal/split_half_loop
execute if data storage call_stack: {this:{is_split:false}} run data modify storage call_stack: this.return set from storage call_stack: call.return
function call_stack:pop