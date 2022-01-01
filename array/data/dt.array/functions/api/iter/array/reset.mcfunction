function call_stack:push
data modify storage call_stack: this.array set from storage call_stack: this.arg0

data modify storage call_stack: this.array.prev append from storage call_stack: this.array.next[]
data modify storage call_stack: this.array.next set from storage call_stack: this.array.prev
data modify storage call_stack: this.array.prev set value []

data modify storage call_stack: call.arg0 set from storage call_stack: this.array
function dt.array:api/iter/array/next
data modify storage call_stack: this.return set from storage call_stack: this.array
data modify storage call_stack: this.return set from storage call_stack: call.return
function call_stack:pop