#> dt.array:api/map/key_value/to_values
# Convert an array of key-values to values
# @params
#   storage call_stack: call.arg0
#       array of key-values
# @output
#   storage call_stack: this.return
#       array of values
function call_stack:push
data modify storage call_stack: this.return set value []
tellraw @p ["to_values this.arg0: ",{"nbt":"this.arg0","storage":"call_stack:"}]
data modify storage call_stack: this.return append from storage call_stack: this.arg0[].value
function call_stack:pop