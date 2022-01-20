# say single sub
# subtract the counts
data modify storage call_stack: call.arg0 set from storage call_stack: this.matching_counts
data modify storage call_stack: call.arg1 set value 1
function dt.array:api/map/math/subtract
data modify storage call_stack: this.adjusted_counts set from storage call_stack: call.return

data modify storage call_stack: call.arg0 set from storage call_stack: this.adjusted_counts
data modify storage call_stack: call.arg1 set value 0
function dt.array:api/reduce/math/are_all_greater_than
execute unless data storage call_stack: call.return run data modify storage call_stack: this.bad_count set value true

# subtract the number of slots from the total requested count and check if the slots are a multiple of the count or negative
scoreboard players reset $int1 dt.tmp
scoreboard players reset $int2 dt.tmp
execute store result score $int1 dt.tmp run data get storage call_stack: this.requested_item_count
execute store result score $int2 dt.tmp run data get storage call_stack: this.matching_counts
scoreboard players operation $int1 dt.tmp -= $int2 dt.tmp
execute store result storage call_stack: this.requested_item_count int 1 run scoreboard players get $int1 dt.tmp
scoreboard players operation $int1 dt.tmp %= $int2 dt.tmp
execute unless score $int1 dt.tmp matches 0 run data modify storage call_stack: this.bad_count set value true

