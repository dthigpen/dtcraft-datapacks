# say pop

execute if score debug dt.call_stack matches 1 run tellraw @p ["Frame:\n",{"nbt":"this","storage":"call_stack:"}]
# return result back to caller by setting call result
data modify storage call_stack: call set value {}
data modify storage call_stack: call.result set from storage call_stack: this.result

# pop caller frame
data modify storage call_stack: this set value {result:{},call:{}}
data modify storage call_stack: this set from storage call_stack: frames[0]
data remove storage call_stack: frames[0]
