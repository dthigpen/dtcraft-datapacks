# say sort group loop
function call_stack:push

data modify storage call_stack: this.group_values set from storage call_stack: this.arg0
data modify storage call_stack: this.remaining_items set from storage call_stack: this.arg1
data modify storage call_stack: this.sorted_items set from storage call_stack: this.arg2
scoreboard players add group_count dt.tmp 1
scoreboard players set remain_count dt.tmp 0

execute if data storage call_stack: this.remaining_items[0] run data modify storage call_stack: call.arg0 set from storage call_stack: this.group_values[0]
execute if data storage call_stack: this.remaining_items[0] run data modify storage call_stack: call.arg1 set from storage call_stack: this.remaining_items
execute if data storage call_stack: this.remaining_items[0] run data modify storage call_stack: call.arg2 set value []
execute if data storage call_stack: this.remaining_items[0] run data modify storage call_stack: call.arg3 set from storage call_stack: this.sorted_items
execute if data storage call_stack: this.remaining_items[0] run function dt.inv_sort:sort_remaining_loop
execute if data storage call_stack: this.remaining_items[0] run data modify storage call_stack: this.sorted_items set from storage call_stack: call.result.sorted_items
execute if data storage call_stack: this.remaining_items[0] run data modify storage call_stack: this.new_remaining_items set from storage call_stack: call.result.new_remaining_items
execute if data storage call_stack: this.remaining_items[0] run data modify storage call_stack: this.remaining_items set from storage call_stack: this.new_remaining_items

data remove storage call_stack: this.group_values[0]

# base case
scoreboard players set int1 dt.tmp 0
execute unless data storage call_stack: this.group_values[0] run scoreboard players set int1 dt.tmp 1
execute unless data storage call_stack: this.remaining_items[0] run scoreboard players set int1 dt.tmp 1

execute if score int1 dt.tmp matches 1 run data modify storage call_stack: this.result set value {remaining_items:[], sorted_items:[]}
execute if score int1 dt.tmp matches 1 run data modify storage call_stack: this.result.sorted_items set from storage call_stack: this.sorted_items
execute if score int1 dt.tmp matches 1 run data modify storage call_stack: this.result.remaining_items set from storage call_stack: this.remaining_items

# loop
execute if score int1 dt.tmp matches 0 run data modify storage call_stack: call.arg0 set from storage call_stack: this.group_values
execute if score int1 dt.tmp matches 0 run data modify storage call_stack: call.arg1 set from storage call_stack: this.remaining_items
execute if score int1 dt.tmp matches 0 run data modify storage call_stack: call.arg2 set from storage call_stack: this.sorted_items
execute if score int1 dt.tmp matches 0 run function dt.inv_sort:sort_group_loop

scoreboard players set int1 dt.tmp 0
execute unless data storage call_stack: this.group_values[0] run scoreboard players set int1 dt.tmp 1
execute unless data storage call_stack: this.remaining_items[0] run scoreboard players set int1 dt.tmp 1
execute if score int1 dt.tmp matches 0 run data modify storage call_stack: this.result set from storage call_stack: call.result

function call_stack:pop