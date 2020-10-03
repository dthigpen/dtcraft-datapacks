#say equal/equal_value
function dtcraft:call_stack/push

data modify storage dtcraft:call_stack this.val1 set from storage dtcraft:call_stack this.arg0
data modify storage dtcraft:call_stack this.val2 set from storage dtcraft:call_stack this.arg1

execute store success score result dt.tmp run data modify storage dtcraft:call_stack this.val1 set from storage dtcraft:call_stack this.val2
execute if score result dt.tmp = #equal dt.enum run data modify storage dtcraft:call_stack this.result.value set value true
execute if score result dt.tmp = #not_equal dt.enum run data modify storage dtcraft:call_stack this.result.value set value false
function dtcraft:call_stack/pop