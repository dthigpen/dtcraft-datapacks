#> dt.callback:api/as_self/queue
# Queue commands to be executed sometime in the future and tag the current executor
# @input
#   storage call_stack: call.arg0
#       array of command that will all be executed on a single future tick
#   storage call_stack: call.arg1
#       nbt data available to the commands at "dt.callback:io data"
# @output
function call_stack:push
# add own uuid for executor to passed in data
data modify storage call_stack: this.arg1.dt.callback.uuid set from entity @s UUID
data modify storage call_stack: this.commands set value []

# wrap the users commands in commands to tag and untag the executor
data modify storage call_stack: this.commands append value "function dt.callback:internal/executor/tag_from_data"
execute if data storage call_stack: this.arg0[] run data modify storage call_stack: this.commands append from storage call_stack: this.arg0[]
execute unless data storage call_stack: this.arg0[] run data modify storage call_stack: this.commands append from storage call_stack: this.arg0
data modify storage call_stack: this.commands append value "function dt.callback:internal/executor/untag"

data modify storage call_stack: call.arg0 set from storage call_stack: this.commands
data modify storage call_stack: call.arg1 set from storage call_stack: this.arg1
function dt.callback:api/queue
function call_stack:pop