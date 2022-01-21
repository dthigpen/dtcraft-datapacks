#> dt.array:api/func/range/args/init
# Init anything not already set to its default value

# Get args to this func
execute unless data storage call_stack: this.func.range.stop run data modify storage call_stack: this.func.range.stop set from storage call_stack: this.stop

data modify storage call_stack: this.func._temp set value {index:0,start:0,stop:0,step:1}
data modify storage call_stack: this.func._temp merge from storage call_stack: this.func.range
data modify storage call_stack: this.func.range set from storage call_stack: this.func._temp
data remove storage call_stack: this.func._temp