function call_stack:push
data modify storage call_stack: this.array set from storage call_stack: this.arg0
data modify storage call_stack: this.array.next prepend from storage call_stack: this.arg1
function dt.array:api/iter/array/_update_unsafe
data modify storage call_stack: this.return set from storage call_stack: this.array
function call_stack:pop