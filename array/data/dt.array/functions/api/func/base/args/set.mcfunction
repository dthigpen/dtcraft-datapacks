#> dt.array:api/func/base/args/set
# Pass through the function args this.arg0..this.arg4 and this.func
# @input
#   storage call_stack: this.arg0
#       optional nbt
#   storage call_stack: this.arg1
#       optional nbt
#   storage call_stack: this.arg2
#       optional nbt
#   storage call_stack: this.arg3
#       optional nbt
#   storage call_stack: this.arg4
#       optional nbt
#   storage call_stack: this.func
#       optional nbt
# @output
#   storage call_stack: call.arg0
#       optional nbt
#   storage call_stack: call.arg1
#       optional nbt
#   storage call_stack: call.arg2
#       optional nbt
#   storage call_stack: call.arg3
#       optional nbt
#   storage call_stack: call.arg4
#       optional nbt
#   storage call_stack: call.func
#       optional nbt
data modify storage call_stack: call.arg0 set from storage call_stack: this.arg0
data modify storage call_stack: call.arg1 set from storage call_stack: this.arg1
data modify storage call_stack: call.arg2 set from storage call_stack: this.arg2
data modify storage call_stack: call.arg3 set from storage call_stack: this.arg3
data modify storage call_stack: call.arg4 set from storage call_stack: this.arg4
data modify storage call_stack: call.func set from storage call_stack: this.func