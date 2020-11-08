#say to shulker loop
function call_stack:push

data modify storage call_stack: this.sorted_items set from storage call_stack: this.arg0
scoreboard players set int1 dt.tmp 27
execute store result score int2 dt.tmp run data get storage call_stack: this.sorted_items
scoreboard players operation int1 dt.tmp -= int2 dt.tmp
execute store result storage call_stack: this.sorted_items[0].Slot int 1 run scoreboard players get int1 dt.tmp
data modify block 2999999 255 2999999 Items append from storage call_stack: this.sorted_items[0]
# scoreboard players add size2 dt.tmp 1

data remove storage call_stack: this.sorted_items[0]

# # base case

# execute if data storage call_stack: this.sorted_items[0] run data modify storage call_stack: this.result set from storage call_stack: this.sorted_items
# loop
execute if data storage call_stack: this.sorted_items[0] run data modify storage call_stack: call.arg0 set from storage call_stack: this.sorted_items
execute if data storage call_stack: this.sorted_items[0] run function dt.inv_sort:sort_to_shulker_loop
# execute if data storage call_stack: this.sorted_items[0] run data modify storage call_stack: this.result set from storage call_stack: call.result
function call_stack:pop