function call_stack:push
data modify storage call_stack: this.return set value []
data modify storage call_stack: this.return append value 'function dt.callback:internal/multi/copy_data_to_call'
data modify storage call_stack: this.return append value 'function call_stack:push'
data modify storage call_stack: this.return append from storage call_stack: this.arg0[]
data modify storage call_stack: this.return append value 'data modify storage call_stack: this.return set from storage call_stack: this'
data modify storage call_stack: this.return append value 'function call_stack:pop'
data modify storage call_stack: this.return append value 'function dt.callback:internal/multi/copy_return_to_data'

function call_stack:pop