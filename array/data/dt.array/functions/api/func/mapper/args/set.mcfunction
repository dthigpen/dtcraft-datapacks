#> dt.array:api/func/mapper/args/set
# Preps for recursive call

#> 1. (Optional) Do any iteration state updating if necessary, modifying local or func storage as needed
#> 2. Store local versions of variables to func storage for iteration
#> 3. (Optional) Modify main function args before recustive call
#> 4. Call base func arg setter which copies main args and func storage to call space

data modify storage call_stack: this.accumulator append from storage call_stack: this.head
function dt.array:api/func/reducer/args/set