function call_stack:push
data modify storage call_stack: this.array set value {readonly:{size:0, index: -1}, prev:[], next:[]}
execute if data storage call_stack: this.arg0 run data modify storage call_stack: this.array.next set from storage call_stack: this.arg0
function dt.array:api/iter/array/_update_unsafe

data modify storage call_stack: call.arg0 set from storage call_stack: this.array
function dt.array:api/iter/array/next
execute if data storage call_stack: call.return run data modify storage call_stack: this.return set from storage call_stack: call.return
execute unless data storage call_stack: call.return run data modify storage call_stack: this.return set from storage call_stack: this.array
function call_stack:pop