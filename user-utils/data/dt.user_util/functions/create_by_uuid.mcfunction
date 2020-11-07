function call_stack:push

data modify storage call_stack: this.user set value {UUID:[],data:{}}
data modify storage call_stack: this.user.UUID set from storage call_stack: this.arg0
data modify storage call_stack: this.result set from storage call_stack: this.user

function call_stack:pop