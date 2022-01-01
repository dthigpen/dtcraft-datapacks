function call_stack:push

# if has next element iterate to it
execute if data storage call_stack: this.arg0.next[0] run data modify storage call_stack: this.has_next set value true
execute if data storage call_stack: this.has_next run data modify storage call_stack: this.array set from storage call_stack: this.arg0
execute if data storage call_stack: this.has_next run data modify storage call_stack: this.array.prev append from storage call_stack: this.array.next[0]
execute if data storage call_stack: this.has_next run data remove storage call_stack: this.array.next[0]
execute if data storage call_stack: this.has_next run function dt.array:api/iter/array/_update_unsafe
execute if data storage call_stack: this.has_next run data modify storage call_stack: this.return set from storage call_stack: this.array

function call_stack:pop