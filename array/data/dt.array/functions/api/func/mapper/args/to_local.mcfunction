#> dt.array:api/func/mapper/args/to_local
# convert func storage to local storage

#> 1. (optional) Depending on your values you may want to remove locals first
data remove storage call_stack: this.thing

#> 2. Set local variables from func storage
data modify storage call_stack: this.thing set from storage call_stack: this.func.mapper.thing