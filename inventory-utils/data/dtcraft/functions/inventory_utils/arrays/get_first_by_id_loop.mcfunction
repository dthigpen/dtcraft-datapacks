# say get by id
function dtcraft:call_stack/push

data modify storage dtcraft:call_stack this.items set from storage dtcraft:call_stack this.arg0
data modify storage dtcraft:call_stack this.id set from storage dtcraft:call_stack this.arg1

#region check id equality
data modify storage dtcraft:call_stack this.val1 set from storage dtcraft:call_stack this.id
data modify storage dtcraft:call_stack this.val2 set from storage dtcraft:call_stack this.items[0].id
execute store success storage dtcraft:call_stack this.not_equal int 1 run data modify storage dtcraft:call_stack this.val1 set from storage dtcraft:call_stack this.val2

#endregion

# base case
execute if data storage dtcraft:call_stack {this:{not_equal:0}} run data modify storage dtcraft:call_stack this.result.value set from storage dtcraft:call_stack this.items[0]

# loop
execute if data storage dtcraft:call_stack {this:{not_equal:1}} run data remove storage dtcraft:call_stack this.items[0]
execute if data storage dtcraft:call_stack {this:{not_equal:1}} if data storage dtcraft:call_stack this.items[0] run data modify storage dtcraft:call_stack call.arg0 set from storage dtcraft:call_stack this.items
execute if data storage dtcraft:call_stack {this:{not_equal:1}} if data storage dtcraft:call_stack this.items[0] run data modify storage dtcraft:call_stack call.arg1 set from storage dtcraft:call_stack this.id
execute if data storage dtcraft:call_stack {this:{not_equal:1}} if data storage dtcraft:call_stack this.items[0] run function dtcraft:inventory_utils/arrays/get_first_by_id_loop
execute if data storage dtcraft:call_stack {this:{not_equal:1}} if data storage dtcraft:call_stack this.items[0] run data modify storage dtcraft:call_stack this.result.value set from storage dtcraft:call_stack this.calls[0].value

function dtcraft:call_stack/pop