function call_stack:push


data modify storage call_stack: call.arg0 set value [[],[]]
data modify storage call_stack: call.arg0[0] append value 'say tick 0'
data modify storage call_stack: call.arg0[0] append value 'tellraw @p ["FIRST data.mydata: ",{"nbt":"data.mydata","storage":"dt.callback:io"}]'
data modify storage call_stack: call.arg0[0] append value 'data modify storage dt.callback:io data.mydata.bar set value true'

data modify storage call_stack: call.arg0[1] append value 'say tick 1'
data modify storage call_stack: call.arg0[1] append value 'tellraw @p ["SECOND data.mydata: ",{"nbt":"data.mydata","storage":"dt.callback:io"}]'

data modify storage call_stack: call.arg1.mydata set value {foo:true,bar:false}
function dt.callback:api/multi_queue

function call_stack:pop