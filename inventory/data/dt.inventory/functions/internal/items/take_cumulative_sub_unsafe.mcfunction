# subtract the counts
data modify storage call_stack: call.arg0 set from storage call_stack: this.matching_counts
data modify storage call_stack: call.arg1 set from storage call_stack: this.requested_item_count
function dt.array:api/deprecated/math/cumulative_subtract_min_0
data modify storage call_stack: this.adjusted_counts set from storage call_stack: call.return.values
data modify storage call_stack: this.requested_item_count set from storage call_stack: call.return.remainder