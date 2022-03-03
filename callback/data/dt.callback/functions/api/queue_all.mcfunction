function call_stack:push
say queuing all...
execute if data storage call_stack: this.arg1 run data modify storage call_stack: global.dt.callback.data_queue append from storage call_stack: this.arg1
execute if data storage call_stack: this.arg1 run data modify storage call_stack: global.dt.callback.cmd_queue append value "data modify storage dt.callback:io data set from storage call_stack: global.dt.callback.data_queue[0]"
execute if data storage call_stack: this.arg1 run data modify storage call_stack: global.dt.callback.cmd_queue append value "data remove storage call_stack: global.dt.callback.data_queue[0]"
data modify storage call_stack: global.dt.callback.cmd_queue append from storage call_stack: this.arg0[]
execute if data storage call_stack: this.arg1 run data modify storage call_stack: global.dt.callback.cmd_queue append value "data remove storage dt.callback:io data"
function call_stack:pop