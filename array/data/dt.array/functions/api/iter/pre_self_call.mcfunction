# reset iter_array
data modify storage call_stack: call.arg0 set from storage call_stack: this._iter.iter_array
function dt.array:api/iter/array/reset
data modify storage call_stack: this._iter.iter_array set from storage call_stack: call.return

data modify storage call_stack: call set from storage call_stack: this
data modify storage call_stack: call._block.target_block set from storage call_stack: this._block.current_block
data remove storage call_stack: call._block.current_block