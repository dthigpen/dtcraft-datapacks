function call_stack:push

execute if data storage call_stack: this.arg0.prev[1] run data modify storage call_stack: this.has_prev set value true
execute if data storage call_stack: this.has_prev run data modify storage call_stack: this.array set from storage call_stack: this.arg0
execute if data storage call_stack: this.has_prev run data modify storage call_stack: this.array.next prepend from storage call_stack: this.array.prev[-1]
execute if data storage call_stack: this.has_prev run data remove storage call_stack: this.array.prev[-1]
execute if data storage call_stack: this.has_prev run function dt.array:api/iter/array/_update_unsafe
execute if data storage call_stack: this.has_prev run data modify storage call_stack: this.return set from storage call_stack: this.array

function call_stack:pop