function call_stack:push
data modify storage call_stack: this.name set from storage call_stack: this.arg0
data modify storage call_stack: this.functions set from storage call_stack: this.arg1

function call_stack:pop