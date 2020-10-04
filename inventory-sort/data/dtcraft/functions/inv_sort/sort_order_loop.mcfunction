#say sort order loop
function dtcraft:call_stack/push
data modify storage dtcraft:call_stack this.temp_order set from storage dtcraft:call_stack this.arg0
execute if data storage dtcraft:call_stack this.temp_order[0] run function dtcraft:inv_sort/sort_group_loop

data remove storage dtcraft:call_stack this.temp_order[0]

execute if data storage dtcraft:call_stack this.temp_order[0] run data modify storage dtcraft:call_stack call.arg0 set from storage dtcraft:call_stack this.temp_order
execute if data storage dtcraft:call_stack this.temp_order[0] run function dtcraft:inv_sort/sort_order_loop

function dtcraft:call_stack/pop