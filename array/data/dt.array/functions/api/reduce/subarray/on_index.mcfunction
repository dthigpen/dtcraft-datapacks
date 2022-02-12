

data modify storage call_stack: call.accumulator set value [[],[]]
function dt.array:api/func/reducer/push
execute if data storage call_stack: this.continue store result score $offset dt.tmp run data get storage call_stack: this.arg1
execute if data storage call_stack: this.continue unless score $offset dt.tmp matches 1.. run data modify storage call_stack: this.accumulator[1] append from storage call_stack: this.head
execute if data storage call_stack: this.continue unless score $offset dt.tmp matches 1.. run data modify storage call_stack: this.accumulator[1] append from storage call_stack: this.tail[]
execute if data storage call_stack: this.continue unless score $offset dt.tmp matches 1.. run data modify storage call_stack: this.tail set value []
execute if data storage call_stack: this.continue if score $offset dt.tmp matches 1.. run data modify storage call_stack: this.accumulator[0] append from storage call_stack: this.head
execute if data storage call_stack: this.continue run scoreboard players remove $offset dt.tmp 1
execute if data storage call_stack: this.continue store result storage call_stack: this.arg1 int 1 run scoreboard players get $offset dt.tmp
execute if data storage call_stack: this.continue run function dt.array:api/func/reducer/args/set
execute if data storage call_stack: this.continue run function dt.array:api/reduce/subarray/on_index 
function dt.array:api/func/pop