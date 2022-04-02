#> dt.callback:api/multi_queue
# Pass in a array of command queues that will be executed sequentially, at least one tick apart
# @params
#   storage call_stack: call.arg0
#       arry of arrays of commands such as [["say tick 1 cmd 1","say tick 1 cmd 2"],["say tick 3 cmd 1","say tick 3 cmd 2"]]
# @output
function call_stack:push
data modify storage call_stack: this.queue set from storage call_stack: this.arg0
data modify storage call_stack: this.data set from storage call_stack: this.arg1
# premptively remove any passed queue since this should be overwritten by this.queue
data remove storage call_stack: this.data.dt.callback.queue

data modify storage call_stack: this.commands set from storage call_stack: this.queue[0]
# tellraw @p ["CMDS this.commands: ",{"nbt":"this.commands","storage":"call_stack:"}]

data remove storage call_stack: this.queue[0]
data modify storage call_stack: this.data.dt.callback.queue set from storage call_stack: this.queue
# tellraw @p ["DATA this.data: ",{"nbt":"this.data","storage":"call_stack:"}]

# append commands that will queue up next set of commands
data modify storage call_stack: this.commands append value 'execute if data storage dt.callback:io data.dt.callback.queue[0] run data modify storage call_stack: call.arg0 set from storage dt.callback:io data.dt.callback.queue'
data modify storage call_stack: this.commands append value 'execute if data storage dt.callback:io data.dt.callback.queue[0] run data modify storage call_stack: call.arg1 set from storage dt.callback:io data'
data modify storage call_stack: this.commands append value 'execute if data storage dt.callback:io data.dt.callback.queue[0] run function dt.callback:api/multi_queue'


data modify storage call_stack: call.arg0 set from storage call_stack: this.commands
data modify storage call_stack: call.arg1 set from storage call_stack: this.data
function dt.callback:api/queue

function call_stack:pop