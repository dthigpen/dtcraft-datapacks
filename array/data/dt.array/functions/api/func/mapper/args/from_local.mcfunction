#> dt.array:api/func/mapper/args/from_local
# Store off local variables into func storage

#> 1. (Optional) Store off local variables into func storage
data modify storage call_stack: this.func.mapper.thing set from storage call_stack: this.thing
