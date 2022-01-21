#> dt.array:api/func/range/args/to_local
# convert func storage to local storage

#> 1. (optional) Depending on your values you may want to remove locals first
#> 2. Set local variables from func storage
data modify storage call_stack: this.index set from storage call_stack: this.func.range.index