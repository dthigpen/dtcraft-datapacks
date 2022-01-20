#> dt.array:api/deprecated/concat
# @deprecated
# concatenate two arrays
# @params
#   storage call_stack: call.arg0
#       array1
#   storage call_stack: call.arg1
#       array2
# @output
#   storage call_stack: call.return
#       array
function call_stack:push
data modify storage call_stack: this.return set value []
data modify storage call_stack: this.return append from storage call_stack: this.arg0[]
data modify storage call_stack: this.return append from storage call_stack: this.arg1[]
function call_stack:pop