#> dt.array:api/experimental/sum
# demo for new reducer type
data modify storage call_stack: call.accumulator set value 0
function dt.array:api/func/reducer/push

execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg0 set from storage call_stack: this.accumulator
execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg1 set from storage call_stack: this.head
execute if data storage call_stack: this.continue run function dt.array:api/helper/math/add
execute if data storage call_stack: this.continue run data modify storage call_stack: this.accumulator set from storage call_stack: call.return

execute if data storage call_stack: this.continue run data modify storage call_stack: call.anti_sum set from storage call_stack: this.anti_sum
execute if data storage call_stack: this.continue run function dt.array:api/func/reducer/args/set
execute if data storage call_stack: this.continue run function dt.array:api/experimental/sum
function dt.array:api/func/pop