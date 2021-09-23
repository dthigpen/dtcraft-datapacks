function call_stack:push
data modify storage call_stack: this.array set from storage call_stack: this.arg0
execute store result score $size1 dt.tmp run data get storage call_stack: this.arg1
data modify storage call_stack: this.popped set from storage call_stack: this.arg2

execute if data storage call_stack: this.array[0] if score $size1 dt.tmp matches 1.. run data modify storage call_stack: this.continue set value true

# basecase
execute unless data storage call_stack: this.continue run data modify storage call_stack: this.return set from storage call_stack: this.popped

# operation
execute if data storage call_stack: this.continue run data modify storage call_stack: this.popped append from storage call_stack: this.array[-1]
execute if data storage call_stack: this.continue run data remove storage call_stack: this.array[-1]
execute if data storage call_stack: this.continue run scoreboard players remove $size1 dt.tmp 1

# recurse
execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg0 set from storage call_stack: this.array
execute if data storage call_stack: this.continue store result storage call_stack: call.arg1 int 1 run scoreboard players get $size1 dt.tmp
execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg2 set from storage call_stack: this.popped
execute if data storage call_stack: this.continue run function dt.array:internal/pop_n_loop
execute if data storage call_stack: this.continue run data modify storage call_stack: this.return set from storage call_stack: call.return


function call_stack:pop