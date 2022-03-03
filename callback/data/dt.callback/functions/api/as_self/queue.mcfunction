function call_stack:push

data modify storage call_stack: this.arg1.dt.callback.uuid set from entity @s UUID
tellraw @p ["queue this: ",{"nbt":"this","storage":"call_stack:"}]
data modify storage call_stack: call.arg0 set value []
data modify storage call_stack: call.arg0 append value "function dt.callback:internal/executor/tag_from_data"
data modify storage call_stack: call.arg0 append from storage call_stack: this.arg0
data modify storage call_stack: call.arg0 append value "function dt.callback:internal/executor/untag"
data modify storage call_stack: call.arg1 set from storage call_stack: this.arg1
function dt.callback:api/queue_all
function call_stack:pop