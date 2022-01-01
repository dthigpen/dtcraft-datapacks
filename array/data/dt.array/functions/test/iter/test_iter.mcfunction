function call_stack:push
# tellraw @p ["!test_iter this._iter.iter_array: ",{"nbt":"this._iter.iter_array","storage":"call_stack:"}]
function dt.array:api/iter/block/start
execute if data storage call_stack: this._block.do run say block 0

#> temp setting of target block to simulate loop or similar
# data modify storage call_stack: call.arg0 set value 1
# function dt.array:api/block/set_target
data modify storage call_stack: call.arg0 set value 3
function dt.array:api/iter/n_times
execute if data storage call_stack: this._block.do run say outer loop
data modify storage call_stack: call.arg0 set value 2
function dt.array:api/iter/n_times
execute if data storage call_stack: this._block.do run say inner loop
execute if data storage call_stack: this._block.do run function dt.array:api/iter/pre_self_call
execute if data storage call_stack: this._block.do run function dt.array:test/iter/test_iter
function dt.array:api/iter/block/end
execute if data storage call_stack: this._block.do run function dt.array:api/iter/pre_self_call
execute if data storage call_stack: this._block.do run function dt.array:test/iter/test_iter
function dt.array:api/iter/block/end

# function dt.array:api/iter/block/start
# execute if data storage call_stack: this._block.do run say block 1
# data modify storage call_stack: call.arg0 set value 4
# function dt.array:api/iter/n_times
# execute if data storage call_stack: this._block.do run say block 1 loop 1
# execute if data storage call_stack: this._block.do run function dt.array:api/iter/pre_self_call
# execute if data storage call_stack: this._block.do run function dt.array:test/iter/test_iter
# function dt.array:api/iter/block/end
# function dt.array:api/iter/block/end

# execute if data storage call_stack: this._block.do run say block 0 B

# function dt.array:api/iter/block/end

function call_stack:pop