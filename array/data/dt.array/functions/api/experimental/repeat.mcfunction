#> dt.array:api/experimental/repeat
# demo implementation of range funct
data modify storage call_stack: call.stop set value 4
function dt.array:api/func/range/push
execute if data storage call_stack: this.continue run tellraw @p ["repeat this: ",{"nbt":"this.index","storage":"call_stack:"}]
execute if data storage call_stack: this.continue run function dt.array:api/func/range/args/set
execute if data storage call_stack: this.continue run function dt.array:api/experimental/repeat
function dt.array:api/func/pop