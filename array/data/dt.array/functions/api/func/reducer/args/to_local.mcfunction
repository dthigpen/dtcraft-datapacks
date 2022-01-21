#> dt.array:api/func/reducer/args/to_local
# convert function space variables to locals
# @params
# @output
data remove storage call_stack: this.head
data remove storage call_stack: this.tail
data remove storage call_stack: this.accumulator

data modify storage call_stack: this.accumulator set from storage call_stack: this.func.reducer.accumulator
data modify storage call_stack: this.head set from storage call_stack: this.func.reducer.head
data modify storage call_stack: this.tail set from storage call_stack: this.func.reducer.tail