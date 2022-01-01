function dt.array:api/iter/block/start

# TODO
# if stack has items pop it and put it on the previous
# now if stack has no items create a new one

# on exit
# if previous has items, pop from previous onto stack

## init iterations array
execute unless data storage call_stack: this._iter.iter_array run data modify storage call_stack: this._temp.num_times set from storage call_stack: call.arg0
execute unless data storage call_stack: this._iter.iter_array run data remove storage call_stack: call.arg0
execute unless data storage call_stack: this._iter.iter_array run function dt.array:api/iter/array/init
execute unless data storage call_stack: this._iter.iter_array run data modify storage call_stack: this._iter.iter_array set from storage call_stack: call.return

## call next on array
data modify storage call_stack: call.arg0 set from storage call_stack: this._iter.iter_array
function dt.array:api/iter/array/next
data modify storage call_stack: this._iter.iter_array set from storage call_stack: call.return

## add new iter scope if no next
execute unless data storage call_stack: this._iter.iter_array.readonly.value run data modify storage call_stack: call.arg0 set value {curr:0}
execute unless data storage call_stack: this._iter.iter_array.readonly.value run data modify storage call_stack: call.arg0.max set from storage call_stack: this._temp.num_times
execute unless data storage call_stack: this._iter.iter_array.readonly.value run data modify storage call_stack: call.arg0.block set from storage call_stack: this._block.current_block
execute unless data storage call_stack: this._iter.iter_array.readonly.value run data modify storage call_stack: this._iter.iter_array.next append from storage call_stack: call.arg0
execute unless data storage call_stack: this._iter.iter_array.readonly.value run data modify storage call_stack: call.arg0 set from storage call_stack: this._iter.iter_array
execute unless data storage call_stack: this._iter.iter_array.readonly.value run function dt.array:api/iter/array/next
execute unless data storage call_stack: this._iter.iter_array.readonly.value run data modify storage call_stack: this._iter.iter_array set from storage call_stack: call.return

## check for match or get next
scoreboard players reset #stack_block dt.tmp
scoreboard players reset #this_block dt.tmp
execute store result score #stack_block dt.tmp run data get storage call_stack: this._iter.iter_array.readonly.value.block
execute store result score #this_block dt.tmp run data get storage call_stack: this._block.current_block

data remove storage call_stack: this._temp.is_block
data remove storage call_stack: this._block.do
execute if score #stack_block dt.tmp = #this_block dt.tmp run data modify storage call_stack: this._block.do set value true