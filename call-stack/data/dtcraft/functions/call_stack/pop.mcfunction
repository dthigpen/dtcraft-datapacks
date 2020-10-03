# say pop

execute if score debug dt.call_stack matches 1 run tellraw @p ["Frame:\n",{"nbt":"this","storage":"dtcraft:call_stack"}]
# return result back to caller by setting value in its stack frame
data modify storage dtcraft:call_stack frames[0].calls prepend from storage dtcraft:call_stack this.result

# pop caller frame
data modify storage dtcraft:call_stack this set from storage dtcraft:call_stack frames[0]
data remove storage dtcraft:call_stack frames[0]
