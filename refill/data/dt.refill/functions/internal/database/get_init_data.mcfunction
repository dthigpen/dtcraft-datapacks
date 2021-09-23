function call_stack:push
data modify storage call_stack: this.return set value {inventory:[], settings:{min_durability:1}}
function call_stack:pop