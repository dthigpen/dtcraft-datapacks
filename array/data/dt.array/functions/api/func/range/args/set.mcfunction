# update index
data modify storage call_stack: call.arg0 set from storage call_stack: this.func.range.index
function dt.array:api/helper/math/add_one
data modify storage call_stack: this.func.range.index set from storage call_stack: call.return

function dt.array:api/func/range/args/from_local
function dt.array:api/func/base/args/set
