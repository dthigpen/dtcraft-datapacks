data modify storage call_stack: this.arg1.dt.callback.uuid set from entity @s UUID
data modify storage call_stack: this.commands set value []
data modify storage call_stack: this.commands append value "function dt.callback:internal/executor/tag_from_data"
execute if data storage call_stack: this.arg0[] run data modify storage call_stack: this.commands append from storage call_stack: this.arg0[]
execute unless data storage call_stack: this.arg0[] run data modify storage call_stack: this.commands append from storage call_stack: this.arg0
data modify storage call_stack: this.commands append value "function dt.callback:internal/executor/untag"

data modify storage call_stack: call.arg0 set from storage call_stack: this.commands
data modify storage call_stack: call.arg1 set from storage call_stack: this.arg1
function dt.callback:api/queue
function call_stack:pop