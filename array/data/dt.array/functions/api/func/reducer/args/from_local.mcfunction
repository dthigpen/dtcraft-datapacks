#> dt.array:api/func/reducer/args/from_local
# storage the local scoped variables into an nbt variable to be passed into the reducer iterations
data modify storage call_stack: this.func.reducer.accumulator set from storage call_stack: this.accumulator
data modify storage call_stack: this.func.reducer.head set from storage call_stack: this.head