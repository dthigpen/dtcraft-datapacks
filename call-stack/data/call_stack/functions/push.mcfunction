# say push

data modify storage call_stack: frames prepend from storage call_stack: this
data modify storage call_stack: this set value {result:{},call:{}}
data modify storage call_stack: this.arg0 set from storage call_stack: call.arg0
data modify storage call_stack: this.arg1 set from storage call_stack: call.arg1
data modify storage call_stack: this.arg2 set from storage call_stack: call.arg2
data modify storage call_stack: this.arg3 set from storage call_stack: call.arg3
data modify storage call_stack: this.arg4 set from storage call_stack: call.arg4
data modify storage call_stack: this.arg5 set from storage call_stack: call.arg5
data modify storage call_stack: this.arg6 set from storage call_stack: call.arg6
data modify storage call_stack: this.arg7 set from storage call_stack: call.arg7
data modify storage call_stack: this.arg8 set from storage call_stack: call.arg8
data modify storage call_stack: call set value {}
