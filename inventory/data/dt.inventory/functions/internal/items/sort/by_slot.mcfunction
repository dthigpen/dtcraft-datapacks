function call_stack:push
data modify storage call_stack: this.items set from storage call_stack: this.arg0

data modify storage call_stack: call.arg0 set value []
data modify storage call_stack: call.arg0 append from storage call_stack: this.items[].Slot
data modify storage call_stack: call.arg1 set from storage call_stack: this.items
function dt.array:api/map/key_value/from_keys_and_values
function call_stack:pipe
function dt.array:api/sort/merge_sort
function call_stack:pipe
function dt.array:api/map/key_value/to_values
data modify storage call_stack: this.return set from storage call_stack: call.return
function call_stack:pop