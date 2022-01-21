#> dt.array:api/func/_template/args/from_local
# Store off local variables into func storage

#> 1. (Optional) Store off local variables into func storage
data modify storage call_stack: this.func._template.thing set from storage call_stack: this.thing
