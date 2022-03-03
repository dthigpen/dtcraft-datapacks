execute if data storage call_stack: call.return run data modify storage call_stack: this.true set value true
data remove storage call_stack: call.arg0
execute if data storage call_stack: this.true if data storage dt.callback:io data.dt.callback.true_func run data modify storage call_stack: call.arg0 set from storage dt.callback:io data.dt.callback.true_func
execute if data storage call_stack: this.true if data storage dt.callback:io data.dt.callback.true_func run data modify storage call_stack: call.arg1 set from storage dt.callback:io data
execute unless data storage call_stack: this.true if data storage dt.callback:io data.dt.callback.false_func run data modify storage call_stack: call.arg0 set from storage dt.callback:io data.dt.callback.false_func
execute unless data storage call_stack: this.true if data storage dt.callback:io data.dt.callback.false_func run data modify storage call_stack: call.arg1 set from storage dt.callback:io data
execute if data storage call_stack: call.arg0 unless data storage call_stack: call.arg0[0] run function dt.callback:api/queue
execute if data storage call_stack: call.arg0[0] run function dt.callback:api/queue_all