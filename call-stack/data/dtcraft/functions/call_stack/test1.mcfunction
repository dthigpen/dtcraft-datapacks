say test1


data modify storage dtcraft:tmp arg1 set value "arg1"
data modify storage dtcraft:tmp arg2 set value "arg2"
function dtcraft:call_stack/call_with_args
function dtcraft:call_stack/test2
tellraw @p ["test2 returned: ",{"nbt":"frames[0].result","storage":"dtcraft:call_stack"}]
function dtcraft:call_stack/call_clean_up