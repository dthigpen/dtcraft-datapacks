function call_stack:push
data modify storage call_stack: this.cond_func set from storage call_stack: this.arg0
data modify storage call_stack: this.true_func set from storage call_stack: this.arg1
data modify storage call_stack: this.false_func set from storage call_stack: this.arg2

data modify storage call_stack: this.data set value {}
data modify storage call_stack: this.data.dt.callback.cond_func set from storage call_stack: this.cond_func
data modify storage call_stack: this.data.dt.callback.true_func set from storage call_stack: this.true_func
data modify storage call_stack: this.data.dt.callback.false_func set from storage call_stack: this.false_func

data modify storage call_stack: this.cond_queue set value []
data modify storage call_stack: this.cond_queue append value "function call_stack:push"
execute unless data storage call_stack: this.cond_func[0] run data modify storage call_stack: this.cond_queue append from storage call_stack: this.cond_func
execute if data storage call_stack: this.cond_func[0] run data modify storage call_stack: this.cond_queue append from storage call_stack: this.cond_func[]
data modify storage call_stack: this.cond_queue append value "function dt.callback:internal/async/if/eval_branches_unsafe"
data modify storage call_stack: this.cond_queue append value "function call_stack:pop"

data modify storage call_stack: call.arg0 set from storage call_stack: this.cond_queue
data modify storage call_stack: call.arg1 set from storage call_stack: this.data
function dt.callback:api/queue_all

function call_stack:pop