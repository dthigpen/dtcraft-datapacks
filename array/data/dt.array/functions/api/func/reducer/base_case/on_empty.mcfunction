#> dt.array:api/func/reducer/base_case/on_empty
# do not continue when there is nothing to iterate on (head is not set)
data remove storage call_stack: this.continue
execute if data storage call_stack: this.head run data modify storage call_stack: this.continue set value true
execute unless data storage call_stack: this.continue run data modify storage call_stack: this.return set from storage call_stack: this.func.reducer.accumulator