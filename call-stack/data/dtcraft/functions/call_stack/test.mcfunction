# say test1
function dtcraft:call_stack/push

data modify storage dtcraft:call_stack call.arg0 set from entity @p Inventory
data modify storage dtcraft:call_stack call.arg1 set from entity @p Inventory[3]

function dtcraft:call_stack/index_of
tellraw @p ["index is: ",{"nbt":"call.result","storage":"dtcraft:call_stack"}]

function dtcraft:call_stack/pop