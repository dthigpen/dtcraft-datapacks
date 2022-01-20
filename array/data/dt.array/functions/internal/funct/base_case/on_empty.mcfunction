# If there are no more elements in the array, do not set this.continue and set this.return
data remove storage call_stack: this.continue
execute if data storage call_stack: this.head run data modify storage call_stack: this.continue set value true
execute unless data storage call_stack: this.continue run data modify storage call_stack: this.return set from storage call_stack: this.accumulator
