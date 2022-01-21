#> dt.array:api/func/_template/args/init
# template for the init function

#> 1. create a temp space with any internal default values you need
data modify storage call_stack: this.func._temp set value {thing:-1}

#> 2. update func storage by merging existing func storage data onto temp
data modify storage call_stack: this.func._temp merge from storage call_stack: this.func._template
data modify storage call_stack: this.func._template set from storage call_stack: this.func._temp
data remove storage call_stack: this.func._temp

#> 3. (optional) consume nornal caller args to update func values
data modify storage call_stack: this.func._template.something set from storage call_stack: this.arg0
