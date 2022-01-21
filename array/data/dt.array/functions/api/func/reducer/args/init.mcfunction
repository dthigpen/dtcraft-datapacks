#> dt.array:api/func/reducer/args/init
data modify storage call_stack: this.func._temp set value {}

# func args -> func storage
execute unless data storage call_stack: this.func.reducer.accumulator run data modify storage call_stack: this.func.reducer.accumulator set from storage call_stack: this.accumulator

# func storage -> default + func storage
data modify storage call_stack: this.func._temp merge from storage call_stack: this.func.reducer
data modify storage call_stack: this.func.reducer set from storage call_stack: this.func._temp
data remove storage call_stack: this.func._temp

# main args -> func storage
data remove storage call_stack: this.func.reducer.head
data remove storage call_stack: this.func.reducer.tail
data modify storage call_stack: this.func.reducer.head set from storage call_stack: this.arg0[0]
data modify storage call_stack: this.func.reducer.tail set from storage call_stack: this.arg0
data remove storage call_stack: this.func.reducer.tail[0]