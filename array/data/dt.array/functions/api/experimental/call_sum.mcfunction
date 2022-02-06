function call_stack:push
data modify storage call_stack: call.arg0 set value [1,2,3,4]
function dt.array:api/experimental/sum
function call_stack:pop