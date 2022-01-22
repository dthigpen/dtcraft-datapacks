#> dt.array:api/func/mapper/base_case/some_condition
# Check a condition and set this.continue OR this.return

#> 1. Remove exisiting continue flag, in case this is a chained condition
#> 2. Check condition and set continue flag
#> 3. Set return value if not continuing
data remove storage call_stack: this.continue
execute if data storage call_stack: this.flag run data modify storage call_stack: this.continue set value true
execute unless data storage call_stack: this.continue run data modify storage call_stack: this.return set from storage call_stack: this.func.mapper.other_thing