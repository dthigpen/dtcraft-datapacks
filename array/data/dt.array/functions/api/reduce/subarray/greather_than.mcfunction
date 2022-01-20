function dt.array:internal/funct/reducer/push

execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg0 set from storage call_stack: this.head.key
execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg1 set from storage call_stack: this.arg1
execute if data storage call_stack: this.continue run function dt.array:api/helper/is_greater_than
execute if data storage call_stack: this.continue if data storage call_stack: call.return run data modify storage call_stack: this.accumulator[0] append from storage call_stack: this.head
execute if data storage call_stack: this.continue unless data storage call_stack: call.return run data modify storage call_stack: this.accumulator[1] append from storage call_stack: this.head

execute if data storage call_stack: this.continue run function dt.array:internal/funct/args/set
execute if data storage call_stack: this.continue run function dt.array:api/reduce/subarray/greather_than
function dt.array:internal/funct/pop
