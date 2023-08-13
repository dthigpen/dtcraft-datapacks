#> dt.array:api/func/reducer/args/set
# Prep the args for the next reducer iteration from the state of the current scope

function dt.array:api/func/reducer/args/from_local
data modify storage call_stack: this.arg0 set from storage call_stack: this.tail
function dt.array:api/func/base/args/set