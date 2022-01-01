function call_stack:push
data modify storage call_stack: this.return set from storage call_stack: this.arg0.readonly.index
function call_stack:pop