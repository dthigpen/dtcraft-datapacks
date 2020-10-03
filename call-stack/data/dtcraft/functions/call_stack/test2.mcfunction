say test2

tellraw @p ["Recieved arg: ",{"nbt":"frames[0].args[0]","storage":"dtcraft:call_stack"}]
tellraw @p ["Recieved arg: ",{"nbt":"frames[0].args[1]","storage":"dtcraft:call_stack"}]

data modify storage dtcraft:call_stack frames[0].result set value "result of test2"