# Queue commands to be executed sometime in the future
# @params
#   storage call_stack: call.arg0
#       array of command that will all be executed on a single future tick
#   storage call_stack: call.arg1
#       nbt data available to the commands at "dt.callback:io data"
# @output
function call_stack:push
data modify storage call_stack: this.commands set value []
execute if data storage call_stack: this.arg0[] run data modify storage call_stack: this.commands append from storage call_stack: this.arg0[]
execute unless data storage call_stack: this.arg0[] run data modify storage call_stack: this.commands append from storage call_stack: this.arg0

execute if data storage call_stack: this.arg1 run data modify storage call_stack: global.dt.callback.data_queue append from storage call_stack: this.arg1
execute if data storage call_stack: this.arg1 run data modify storage call_stack: global.dt.callback.cmd_queue append value "data modify storage dt.callback:io data set from storage call_stack: global.dt.callback.data_queue[0]"
execute if data storage call_stack: this.arg1 run data modify storage call_stack: global.dt.callback.cmd_queue append value "data remove storage call_stack: global.dt.callback.data_queue[0]"
data modify storage call_stack: global.dt.callback.cmd_queue append from storage call_stack: this.commands[]
execute if data storage call_stack: this.arg1 run data modify storage call_stack: global.dt.callback.cmd_queue append value "data remove storage dt.callback:io data"
function call_stack:pop