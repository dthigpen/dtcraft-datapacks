# say sort order loop
function dtcraft:call_stack/push

data modify storage dtcraft:call_stack this.temp_order set from storage dtcraft:call_stack this.arg0
data modify storage dtcraft:call_stack this.remaining_items set from storage dtcraft:call_stack this.arg1
data modify storage dtcraft:call_stack this.sorted_items set from storage dtcraft:call_stack this.arg2
# tellraw @p ["group: ",{"nbt":"this.temp_order[0].group","storage":"dtcraft:call_stack"}]

execute if data storage dtcraft:call_stack this.temp_order[0] run data modify storage dtcraft:call_stack call.arg0 set from storage dtcraft:call_stack this.temp_order[0].values
execute if data storage dtcraft:call_stack this.temp_order[0] run data modify storage dtcraft:call_stack call.arg1 set from storage dtcraft:call_stack this.remaining_items
execute if data storage dtcraft:call_stack this.temp_order[0] run data modify storage dtcraft:call_stack call.arg2 set from storage dtcraft:call_stack this.sorted_items
execute if data storage dtcraft:call_stack this.temp_order[0] run function dtcraft:inv_sort/sort_group_loop
execute if data storage dtcraft:call_stack this.temp_order[0] run data modify storage dtcraft:call_stack this.remaining_items set from storage dtcraft:call_stack call.result.remaining_items
execute if data storage dtcraft:call_stack this.temp_order[0] run data modify storage dtcraft:call_stack this.sorted_items set from storage dtcraft:call_stack call.result.sorted_items

data remove storage dtcraft:call_stack this.temp_order[0]

#region base case
# no more groups
scoreboard players set int1 dt.tmp 0
execute unless data storage dtcraft:call_stack this.temp_order[0] run scoreboard players set int1 dt.tmp 1
execute unless data storage dtcraft:call_stack this.remaining_items[0] run scoreboard players set int1 dt.tmp 1
execute if score int1 dt.tmp matches 1 run data modify storage dtcraft:call_stack this.result.remaining_items set from storage dtcraft:call_stack this.remaining_items
execute if score int1 dt.tmp matches 1 run data modify storage dtcraft:call_stack this.result.sorted_items set from storage dtcraft:call_stack this.sorted_items
#endregion

# loop
execute if score int1 dt.tmp matches 0 run data modify storage dtcraft:call_stack call.arg0 set from storage dtcraft:call_stack this.temp_order
execute if score int1 dt.tmp matches 0 run data modify storage dtcraft:call_stack call.arg1 set from storage dtcraft:call_stack this.remaining_items
execute if score int1 dt.tmp matches 0 run data modify storage dtcraft:call_stack call.arg2 set from storage dtcraft:call_stack this.sorted_items
execute if score int1 dt.tmp matches 0 run function dtcraft:inv_sort/sort_order_loop
scoreboard players set int1 dt.tmp 0
execute unless data storage dtcraft:call_stack this.temp_order[0] run scoreboard players set int1 dt.tmp 1
execute unless data storage dtcraft:call_stack this.remaining_items[0] run scoreboard players set int1 dt.tmp 1
execute if score int1 dt.tmp matches 0 run data modify storage dtcraft:call_stack this.result set from storage dtcraft:call_stack call.result

function dtcraft:call_stack/pop