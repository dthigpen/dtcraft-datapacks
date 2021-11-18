function call_stack:push

data modify storage call_stack: call.arg0 set from storage call_stack: this.arg0
data modify storage call_stack: call.arg1 set from storage call_stack: this.arg1
function dt.array:api/index_of
data modify storage call_stack: this.return set value false
execute unless data storage call_stack: {call:{return:-1}} run data modify storage call_stack: this.return set value true
function call_stack:pop