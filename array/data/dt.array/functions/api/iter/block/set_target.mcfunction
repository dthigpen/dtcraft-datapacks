function call_stack:push
data modify storage call_stack: this._block.target_block set from storage call_stack: this.arg0

function call_stack:pop