function call_stack:push
say sample_callback_2!

function dt.callback:api/get_data
data modify storage dt.callback:test data.val2 set from storage call_stack: call.result.data


function call_stack:pop