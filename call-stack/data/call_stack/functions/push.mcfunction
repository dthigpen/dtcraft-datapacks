#> call_stack:push
# Push a new variable scope to the stack. Variables created in this scope will remain until pop is called.
# Example: data modify storage call_stack: this.var set value "foo"
data modify storage call_stack: frames append from storage call_stack: this
data remove storage call_stack: call.return
data modify storage call_stack: this set value {}
data modify storage call_stack: this merge from storage call_stack: call
data modify storage call_stack: call set value {}
