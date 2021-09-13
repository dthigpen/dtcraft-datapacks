#> call_stack:pop
# pop (and destroy) the top of the variable scope from the stack and load this variable with the next top.

# return result back to caller by setting call result
data modify storage call_stack: call set value {}
data modify storage call_stack: call.result set from storage call_stack: this.result

# pop caller frame
data modify storage call_stack: this set value {result:{},call:{}}
data modify storage call_stack: this set from storage call_stack: frames[0]
data remove storage call_stack: frames[0]
