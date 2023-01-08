#> dt.array:api/func/pop
# Finish the scope of a recursive function
execute if data storage call_stack: this.continue run data modify storage call_stack: this.return set from storage call_stack: call.return
function call_stack:pop