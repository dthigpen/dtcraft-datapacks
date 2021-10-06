#> call_stack:pop
# pop (and destroy) the top of the variable scope from the stack and load this variable with the next top.

# return result back to caller by setting call.return
data modify storage call_stack: call set value {}
data modify storage call_stack: call.return set from storage call_stack: this.return

# pop caller frame
data modify storage call_stack: this set value {}
data modify storage call_stack: this set from storage call_stack: frames[-1]
data remove storage call_stack: frames[-1]
