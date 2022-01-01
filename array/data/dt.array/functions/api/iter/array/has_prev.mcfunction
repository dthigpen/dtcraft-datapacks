function call_stack:push
execute if data storage call_stack: this.arg0.prev[1] run data modify storage call_stack: this.return set value true
function call_stack:pop