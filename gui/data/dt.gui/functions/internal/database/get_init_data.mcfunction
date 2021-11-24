function call_stack:push
data modify storage call_stack: this.return set value {whitelist:[], hopper:{priority:[]}}
function call_stack:pop