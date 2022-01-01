function call_stack:push
data modify storage call_stack: call.arg0 set value [111,222,333]
function dt.array:internal/helper/say_each_element
function call_stack:pop